namespace l3_project
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Skill
    {
        public Skill()
        {
            SkillsXPersons = new HashSet<SkillsXPerson>();
        }

        public int Id { get; set; }

        [StringLength(20)]
        public string Name { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        public int Type_Id { get; set; }

        public int Languages_Id { get; set; }

        public virtual Language Language { get; set; }

        public virtual ICollection<SkillsXPerson> SkillsXPersons { get; set; }
    }
}
