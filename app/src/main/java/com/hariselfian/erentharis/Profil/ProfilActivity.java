package com.hariselfian.erentharis.Profil;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.hariselfian.erentharis.MainActivity;
import com.hariselfian.erentharis.R;
import com.hariselfian.erentharis.TinyDB;
/**
 * Kode dibuat dengan cinta oleh Haris Elfian.
 */
public class ProfilActivity extends AppCompatActivity {
    TinyDB tinyDB;
    TextView nama,alamat,email,telp, title;
    ImageView btnClose, back;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profil);

        tinyDB = new TinyDB(this);
        nama = findViewById(R.id.nama);
        nama.setText(tinyDB.getString("keyNamaUser"));
        alamat = findViewById(R.id.alamat);
        alamat.setText(tinyDB.getString("keyAlamatUser"));
        email = findViewById(R.id.email);
        email.setText(tinyDB.getString("keyEmailUser"));
        telp = findViewById(R.id.telp);
        telp.setText(tinyDB.getString("keyTelpUser"));

        title = findViewById(R.id.tv_toolbar);
        title.setText("Profil User");

        btnClose = findViewById(R.id.ib_back);
        btnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(ProfilActivity.this, MainActivity.class);
                startActivity(i);
                finish();
            }
        });


    }

}