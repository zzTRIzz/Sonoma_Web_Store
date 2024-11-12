package com.example.hellowordsd18403.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

import java.util.Collection;
import java.util.Objects;

@Entity
public class MauSac {
    private Integer id;
    @NotBlank(message = "không được để trống")
    private String ma;
    @NotBlank(message = "không được để trống")
    private String ten;
    private Boolean trangThai;
    private Collection<SanPhamCt> sanPhamCtsById;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "ma")
    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    @Basic
    @Column(name = "ten")
    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    @Basic
    @Column(name = "trangThai")
    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MauSac mauSac = (MauSac) o;
        return Objects.equals(id, mauSac.id) && Objects.equals(ma, mauSac.ma) && Objects.equals(ten, mauSac.ten) && Objects.equals(trangThai, mauSac.trangThai);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ma, ten, trangThai);
    }

    @OneToMany(mappedBy = "mauSacByIdMauSac")
    public Collection<SanPhamCt> getSanPhamCtsById() {
        return sanPhamCtsById;
    }

    public void setSanPhamCtsById(Collection<SanPhamCt> sanPhamCtsById) {
        this.sanPhamCtsById = sanPhamCtsById;
    }
}
