namespace WebsiteBanHang.Areas.User.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhachHang")]
    public partial class KhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KhachHang()
        {
            DonHang = new HashSet<DonHang>();
        }

        [Key]
        public int MaKH { get; set; }

        [StringLength(100)]
        [Display(Name ="Họ Tên ")]
        [Required(ErrorMessage = "Họ tên không để trống!")]
        public string HoTen { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage ="Tài khoản không để trống!")]
        [Display(Name ="Tài khoản")]
        public string TaiKhoan { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Mật khẩu không để trống!")]
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Email không để trống!")]
        public string Email { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Địa chỉ không để trống!")]
        [Display(Name = "Địa chỉ ")]
        public string DiaChi { get; set; }

        [StringLength(30)]
        [Required(ErrorMessage = "Số điện thoại không để trống!")]
        [Display(Name = "Điện thoại ")]
        public string DienThoai { get; set; }

        [StringLength(3)]
        [Required(ErrorMessage = "Giới tính không để trống!")]
        [Display(Name = "Giới Tính")]
        public string GioiTinh { get; set; }

        [Column(TypeName = "date")]
        [Required(ErrorMessage = "Ngày sinh không để trống!")]
        [Display(Name = "Ngày sinh")]
        public DateTime? NgaySinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHang { get; set; }
    }
}
