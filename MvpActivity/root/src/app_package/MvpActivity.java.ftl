package ${packageName};

import ${superClassFqcn};
import android.content.Context;
import android.content.Intent;

<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends BaseActivity<${presenterClass}> implements ${contractClass}.View {

    public static void start(Context context) {
        Intent starter = new Intent(context, ${activityClass}.class);
        context.startActivity(starter);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initView() {
        setupToolbar("${activityClass}");
    }

    @Override
    protected void initInject() {
        getActivityComponent().inject(this);
    }

<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
