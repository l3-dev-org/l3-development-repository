namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Language
    {
        public Language()
        {
            Articles = new HashSet<Article>();
            Awards = new HashSet<Award>();
            Experiences = new HashSet<Experience>();
            Skills = new HashSet<Skill>();
        }

        public int Id { get; set; }

        [Column("Language")]
        [Required]
        [StringLength(30)]
        public string Language1 { get; set; }

        [StringLength(5)]
        public string Code { get; set; }

        public virtual ICollection<Article> Articles { get; set; }

        public virtual ICollection<Award> Awards { get; set; }

        public virtual ICollection<Experience> Experiences { get; set; }

        public virtual ICollection<Skill> Skills { get; set; }
    }
}
