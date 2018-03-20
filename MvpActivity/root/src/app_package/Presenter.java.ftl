package ${packageName};

import ${superClassFqcn};

public class ${presenterClass} extends RxPresenter<${contractClass}.View> implements ${contractClass}.Presenter {

    private RetrofitHelper retrofitHelper;

    @Inject
    public ${presenterClass}(RetrofitHelper retrofitHelper) {
        this.retrofitHelper = retrofitHelper;
    }

}