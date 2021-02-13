package com.hariselfian.erentharis.slider;

/**
 * Kode dibuat dengan cinta oleh Haris Elfian.
 */
public class ModelSlider {
    private int id;
    private String img;

    public ModelSlider(int id, String img) {
        this.id = id;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
