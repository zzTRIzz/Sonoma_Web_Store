package com.example.hellowordsd18403.respository;

import com.example.hellowordsd18403.entity.MauSac;
import com.example.hellowordsd18403.entity.NhanVien;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MauSacRepo extends JpaRepository<MauSac, Integer> {
    @Query("SELECT ms FROM MauSac ms WHERE ms.ten LIKE %:search% OR ms.ma LIKE %:search%")
    Page<MauSac> searchByNameOrId(@Param("search") String search, Pageable pageable);
}
