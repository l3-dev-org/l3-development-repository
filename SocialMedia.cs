namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("SocialMedia")]
    public partial class SocialMedia
    {
        public SocialMedia()
        {
            SocialMediaXPersons = new HashSet<SocialMediaXPerson>();
        }

        public int Id { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        [StringLength(100)]
        public string Website { get; set; }

        [Column(TypeName = "image")]
        public byte[] Logo { get; set; }

        public virtual ICollection<SocialMediaXPerson> SocialMediaXPersons { get; set; }
    }
}
