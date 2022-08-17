namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("Person")]
    public partial class Person
    {
        public Person()
        {
            Experiences = new HashSet<Experience>();
            SkillsXPersons = new HashSet<SkillsXPerson>();
            SocialMediaXPersons = new HashSet<SocialMediaXPerson>();
        }

        public long Id { get; set; }

        [Required]
        [StringLength(400)]
        public string Name { get; set; }

        [Required]
        [StringLength(600)]
        public string Email { get; set; }

        [StringLength(20)]
        public string Phone { get; set; }

        [Column(TypeName = "image")]
        public byte[] Picture { get; set; }

        public virtual ICollection<Experience> Experiences { get; set; }

        public virtual ICollection<SkillsXPerson> SkillsXPersons { get; set; }

        public virtual ICollection<SocialMediaXPerson> SocialMediaXPersons { get; set; }
    }
}
