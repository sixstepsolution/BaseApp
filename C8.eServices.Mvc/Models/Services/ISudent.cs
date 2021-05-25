using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
   public interface ISudent
    {
        bool SaveChanges();
        IEnumerable<Student> GetAllStudents();
        int AddStudent(Student sudent);
        int UpdateStudent(Student sudent);
        Student GetStudentData(int id);
        int DeleteStudent(int id);
    }
}
