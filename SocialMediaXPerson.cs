namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("SocialMediaXPerson")]
    public partial class SocialMediaXPerson
    {
        public int Id { get; set; }

        [StringLength(100)]
        public string Handle { get; set; }

        [Column(TypeName = "date")]
        public DateTime? CreationDate { get; set; }

        public long Person_Id { get; set; }

        public int SocialMedia_Id { get; set; }

        public virtual Person Person { get; set; }

        public virtual SocialMedia SocialMedia { get; set; }
    }
}
