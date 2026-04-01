package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class ThirdActivity2 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_third2);
        TextView nom = findViewById(R.id.nom);
        TextView prenom = findViewById(R.id.prenom);
        TextView email = findViewById(R.id.email);

        Button btn = findViewById(R.id.buttonn2);
        Intent intent = getIntent();
        String nomText = intent.getStringExtra("NOM");
        String prenomText = intent.getStringExtra("PRENOM");
        String emailText = intent.getStringExtra("EMAIL");
        nom.setText(nomText);
        prenom.setText(prenomText);
        email.setText(emailText);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent2 = new Intent(ThirdActivity2.this, SecondActivity2.class);
                startActivity(intent2);
            }
        });

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.btn2), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }
}