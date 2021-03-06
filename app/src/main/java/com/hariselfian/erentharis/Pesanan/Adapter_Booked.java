package com.hariselfian.erentharis.Pesanan;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.squareup.picasso.Picasso;
import com.hariselfian.erentharis.API;
import com.hariselfian.erentharis.R;
import com.hariselfian.erentharis.TinyDB;

import java.util.List;
/**
 * Kode dibuat dengan cinta oleh Haris Elfian.
 */
public class Adapter_Booked extends RecyclerView.Adapter<Adapter_Booked.ViewHolder> {
    Context context;
    List<Model_Booked> dataBooked;

    public Adapter_Booked(List<Model_Booked> dataBooked) {
        this.dataBooked = dataBooked;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View b = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_row_booked,parent,false);
        ViewHolder holder = new ViewHolder(b);
        return holder;
    }

    @Override
    public void onBindViewHolder(@NonNull Adapter_Booked.ViewHolder holder, int position) {
        Model_Booked data = dataBooked.get(position);
        API api = new API();
        TinyDB tinyDB = new TinyDB(context);
        holder.txt_namaBarang.setText(data.getNama_barang());
        holder.txt_tanggalPinjam.setText(data.getTanggal_awal());
        holder.txt_tanggalKembali.setText(data.getTanggal_akhir());
        holder.txt_status.setText(data.getStatus());
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(context, Detail_BookedActivity.class);
                intent.putExtra("id_barang", data.getId_barang());
                intent.putExtra("id_user", data.getId_user());
                intent.putExtra("namaBarang", data.getNama_barang());
                intent.putExtra("hargaBarang", data.getTarif_barang());
                intent.putExtra("banyakSewa", data.getBanyak_sewa());
                intent.putExtra("namaPenyewa", data.getNama_user());
                intent.putExtra("tglAwal", data.getTanggal_awal());
                intent.putExtra("tglAkhir", data.getTanggal_akhir());
                intent.putExtra("alamat", data.getAlamat_penyewa());
                intent.putExtra("status", data.getStatus()); ///isi kk
                intent.putExtra("gambarBarang", data.getGambar_barang());
                intent.putExtra("gambarJaminan", data.getJaminan());
                intent.putExtra("totaSewa", data.getTotal_harga());
                Log.d("tglawal", data.getTanggal_awal());
                Log.d("tglAkhir", data.getTanggal_akhir());
                context.startActivity(intent);
            }
        });
        Picasso.get().load(api.URL_GAMBAR_U+data.getGambar_barang()).into(holder.img);

    }

    @Override
    public int getItemCount() {
        return dataBooked.size();
    }


    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView txt_namaBarang, txt_tanggalPinjam, txt_tanggalKembali,txt_status;
        ImageView img;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            context = itemView.getContext();
            txt_namaBarang = itemView.findViewById(R.id.namaBarang);
            txt_tanggalPinjam = itemView.findViewById(R.id.txt_tgl_pinjam);
            txt_tanggalKembali = itemView.findViewById(R.id.txt_tanggal_kembali);
            img = itemView.findViewById(R.id.img_barang);
            txt_status = itemView.findViewById(R.id.status);
        }
    }
}
