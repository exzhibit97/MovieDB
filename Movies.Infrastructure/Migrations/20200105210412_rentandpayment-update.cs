using Microsoft.EntityFrameworkCore.Migrations;

namespace Movies.Infrastructure.Migrations
{
    public partial class rentandpaymentupdate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PaymentNo",
                table: "Rentals");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "PaymentNo",
                table: "Rentals",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
