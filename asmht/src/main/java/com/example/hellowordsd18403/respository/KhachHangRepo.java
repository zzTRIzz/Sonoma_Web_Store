package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.KhachHang;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHangRepo extends JpaRepository<KhachHang, Integer> {
    @Query("SELECT kh FROM KhachHang kh WHERE kh.maKh LIKE %:search% OR kh.ten LIKE %:search%")
    Page<KhachHang> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
