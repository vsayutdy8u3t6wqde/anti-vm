package com.anti_vm;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity 
{
    @Override
    protected void onCreate(Bundle savedInstanceState) 
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView textView1 = (TextView)findViewById(R.id.textView1);
        textView1.setText("You are using " + (IsVM() ? "Virtual" : "Real") + " Environment");
    }
	
    public Boolean IsVM() 
    {
        return android.os.Build.getRadioVersion().length() == 0;
    } 
}
