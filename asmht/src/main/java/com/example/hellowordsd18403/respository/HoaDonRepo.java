package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.HoaDon;
import com.example.hellowordsd18403.entity.MauSac;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonRepo extends JpaRepository<HoaDon, Integer> {
    @Query("SELECT ms FROM HoaDon ms WHERE ms.khachHangByIdKh.ten LIKE %:search% OR ms.nhanVienByIdNv.ten LIKE %:search%")
    Page<HoaDon> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
