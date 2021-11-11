using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class SudentRepo : ISudent
    {
        private WayleaveDBContext _context;
        public SudentRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public int AddStudent(Student sudent)
        {
            throw new NotImplementedException();
        }

        public int DeleteStudent(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Student> GetAllStudents()
        {
            return _context.Students;
        }

        public Student GetStudentData(int id)
        {
            return _context.Students.Find(id);
        }        
        public int UpdateStudent(Student sudent)
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }

    }
}