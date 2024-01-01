
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MoviesApi.Data;
using MoviesApi.Dtos;
using MoviesApi.Entities;

namespace MoviesApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class UserController(MainDbContext dbContext) : ControllerBase
{       
    private readonly MainDbContext _dbContext = dbContext; 
    //.ToEntity(dto) is an extension method that converts a dto to an entity
    private static UserEntity ToEntity(CreateUserDto r) {
        return new UserEntity {
            Name = r.Name,
            Surname = r.Surname,
            Email = r.Email,
            Password = r.Password
        };
    }
    [HttpGet]
    public async Task<ActionResult> ListUser()
    {
        var users = await _dbContext.Users.ToListAsync();
        return Ok(users);
    }
    
    [HttpGet("{id}")]
    public async Task<ActionResult> GetUser(Guid id)
    {
        var user = await _dbContext.Users.FirstOrDefaultAsync(x => x.Id == id);
        if (user == null)
        {
            return NotFound();
        }
        return Ok(user);
    }
    [HttpPost]
    public async Task<ActionResult> CreateUser(CreateUserDto dto)
    {
        var entity = ToEntity(dto);
        await _dbContext.Users.AddAsync(entity);
        await _dbContext.SaveChangesAsync();
        return CreatedAtAction(nameof(GetUser), new {id = entity.Id}, entity);
    }

    [HttpPut("{id}")]
    public async Task<ActionResult> UpdateUser(UserEntity dto)
    {
      // take id parametert from tamplate and find user by id
        var user = await _dbContext.Users.FirstOrDefaultAsync(x => x.Id == dto.Id);
        if (user == null)
        {
            return NotFound();
        }
        user.Name = dto.Name;
        user.Surname = dto.Surname;
        user.Email = dto.Email;
        user.Password = dto.Password;
         _dbContext.Users.Update(user);
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }
}