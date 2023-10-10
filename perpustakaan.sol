// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SariYantiPandiangan {
    struct Buku {
        string judul;
        uint256 tahunDibuat;
        string penulis;
    }

    mapping(uint256 => Buku) private bukuPerISBN;
    mapping(address => bool) private isAdmin;

    modifier onlyAdmin() {
        require(isAdmin[msg.sender], "Hanya admin yang dapat mengakses fungsi ini");
        _;
    }

    constructor () {
         isAdmin[msg.sender] = true;
    }

    function tambahBuku(uint256 isbn, string memory judul, uint256 tahunDibuat, string memory penulis) public onlyAdmin {
        require(bukuPerISBN[isbn].tahunDibuat == 0, "Buku dengan ISBN tersebut sudah ada");

        Buku memory bukuBaru = Buku(judul, tahunDibuat, penulis);
        bukuPerISBN[isbn] = bukuBaru;
    }

    function updateBuku(uint256 isbn, string memory judul, uint256 tahunDibuat, string memory penulis) public onlyAdmin {
        require(bukuPerISBN[isbn].tahunDibuat != 0, "Buku dengan ISBN tersebut tidak ditemukan");

        Buku memory bukuUpdate = Buku(judul, tahunDibuat, penulis);
        bukuPerISBN[isbn] = bukuUpdate;
    }

    function hapusBuku(uint256 isbn) public onlyAdmin {
        require(bukuPerISBN[isbn].tahunDibuat != 0, "Buku dengan ISBN tersebut tidak ditemukan");

        delete bukuPerISBN[isbn];
    }

    function getDataBuku(uint256 isbn) public view returns (string memory, uint256, string memory) {
        require(bukuPerISBN[isbn].tahunDibuat != 0, "Buku dengan ISBN tersebut tidak ditemukan");

        Buku memory buku = bukuPerISBN[isbn];
        return (buku.judul, buku.tahunDibuat, buku.penulis);

    }

    function getExecution(uint256 isbn) public view returns (string memory, uint256, string memory) {
        require(bukuPerISBN[isbn].tahunDibuat != 0, "Buku dengan ISBN tersebut tidak ditemukan");

        Buku memory buku = bukuPerISBN[isbn];
        return (buku.judul, buku.tahunDibuat, buku.penulis);

    }

    function setAdmin(address adminAddress) public onlyAdmin {
        isAdmin[adminAddress] = true;
    } }
