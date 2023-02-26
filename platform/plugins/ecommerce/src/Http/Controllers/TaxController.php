<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Forms\TaxForm;
use Botble\Ecommerce\Http\Requests\TaxRequest;
use Botble\Ecommerce\Repositories\Interfaces\TaxInterface;
use Botble\Ecommerce\Tables\TaxTable;
use Exception;
use Illuminate\Http\Request;

class TaxController extends BaseController
{
    protected TaxInterface $taxRepository;

    public function __construct(TaxInterface $taxRepository)
    {
        $this->taxRepository = $taxRepository;
    }

    public function index(TaxTable $dataTable)
    {
        page_title()->setTitle(trans('plugins/ecommerce::tax.name'));

        return $dataTable->renderTable();
    }

    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/ecommerce::tax.create'));

        return $formBuilder->create(TaxForm::class)->renderForm();
    }

    public function store(TaxRequest $request, BaseHttpResponse $response)
    {
        $tax = $this->taxRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(TAX_MODULE_SCREEN_NAME, $request, $tax));

        return $response
            ->setPreviousUrl(route('tax.index'))
            ->setNextUrl(route('tax.edit', $tax->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(int $id, FormBuilder $formBuilder)
    {
        $tax = $this->taxRepository->findOrFail($id);

        page_title()->setTitle(trans('plugins/ecommerce::tax.edit', ['title' => $tax->title]));

        return $formBuilder->create(TaxForm::class, ['model' => $tax])->renderForm();
    }

    public function update(int $id, TaxRequest $request, BaseHttpResponse $response)
    {
        $tax = $this->taxRepository->createOrUpdate($request->input(), ['id' => $id]);

        event(new UpdatedContentEvent(TAX_MODULE_SCREEN_NAME, $request, $tax));

        return $response
            ->setPreviousUrl(route('tax.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Request $request, int $id, BaseHttpResponse $response)
    {
        try {
            $tax = $this->taxRepository->findOrFail($id);
            $this->taxRepository->delete($tax);
            event(new DeletedContentEvent(TAX_MODULE_SCREEN_NAME, $request, $tax));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $tax = $this->taxRepository->findOrFail($id);
            $this->taxRepository->delete($tax);
            event(new DeletedContentEvent(TAX_MODULE_SCREEN_NAME, $request, $tax));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
