package com.example.myapplication;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {
    Button plusBtn, minusBtn, fracBtn, multBtn;
    Button clearBtn;
    EditText var1, var2;
    TextView res;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        plusBtn = findViewById(R.id.plusBtn);
        minusBtn = findViewById(R.id.minusBtn);
        fracBtn = findViewById(R.id.fracBtn);
        multBtn = findViewById(R.id.multBtn);
        clearBtn = findViewById(R.id.clearBtn);
        var1 = findViewById(R.id.var1);
        var2 = findViewById(R.id.var2);
        res = findViewById(R.id.res);
        plusBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateResult("+");
            }
        });

        minusBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateResult("-");
            }
        });

        fracBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateResult("/");
            }
        });

        multBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateResult("*");
            }
        });

        clearBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                var1.setText("");
                var2.setText("");
                res.setText("Result : ");
            }
        });

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.btn2), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

    }

    private void calculateResult(String operator) {
        double var1Value = Double.parseDouble(var1.getText().toString());
        double var2Value = Double.parseDouble(var2.getText().toString());
        double result = 0.0;

        if (operator == "+") {
            result = var1Value + var2Value;
        } else if (operator == "-") {
            result = var1Value - var2Value;
        } else if (operator == "*") {
            result = var1Value * var2Value;
        } else if (operator == "/") {
            if (var2Value == 0.0) {
                result = 999999.0;
            } else {
                result = var1Value / var2Value;
            }
        }
        res.setText("Result : " + result);
    }
}