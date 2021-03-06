USE [master]
GO
/****** Object:  Database [DB_Veterinaria]    Script Date: 09/07/2014 06:43:50 p.m. ******/
CREATE DATABASE [DB_Veterinaria]

GO

ALTER DATABASE [DB_Veterinaria] SET COMPATIBILITY_LEVEL = 100

GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Veterinaria].[dbo].[sp_fulltext_database] @action = 'enable'
end

GO
ALTER DATABASE [DB_Veterinaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Veterinaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Veterinaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Veterinaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_Veterinaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Veterinaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Veterinaria] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Veterinaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Veterinaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Veterinaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Veterinaria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Veterinaria', N'ON'
GO
USE [DB_Veterinaria]
GO
CREATE TABLE [dbo].[T_Cajas](
	[IdCaja] [varchar](7) NOT NULL,
	[TipoCaja] [varchar](25) NOT NULL,
 CONSTRAINT [PK_IdCaja] PRIMARY KEY CLUSTERED 
(
	[IdCaja] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Categorias]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IdCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Cliente]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Cliente](
	[IdCliente] [varchar](7) NOT NULL,
	[Cedula] [varchar](11) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Apellido1] [varchar](25) NOT NULL,
	[Apellido2] [varchar](25) NULL,
	[IdTipoCliente] [int] NOT NULL,
	[Telefono1] [varchar](9) NOT NULL,
	[Telefono2] [varchar](9) NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_IdCliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Clientes]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Clientes](
	[IdCliente] [varchar](7) NOT NULL,
	[Cedula] [varchar](11) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Apellido1] [varchar](25) NOT NULL,
	[Apellido2] [varchar](25) NULL,
	[IdTipoCliente] [int] NOT NULL,
	[Telefono1] [varchar](9) NOT NULL,
	[Telefono2] [varchar](9) NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Departamento]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NombreDepartamento] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IdDepartamento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DetalleCaja]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DetalleCaja](
	[IdDetalleCaja] [int] IDENTITY(1,1) NOT NULL,
	[IdCaja] [varchar](7) NOT NULL,
	[IdEmpleado] [varchar](7) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_IdDetalleCaja] PRIMARY KEY CLUSTERED 
(
	[IdDetalleCaja] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DetalleCompras]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DetalleCompras](
	[IdC] [int] IDENTITY(1,1) NOT NULL,
	[IdFacCompra] [varchar](7) NOT NULL,
	[IdProducto] [varchar](7) NOT NULL,
	[CantidadArticulo] [int] NOT NULL,
	[CostoArticulo] [int] NOT NULL,
 CONSTRAINT [PK_IdC] PRIMARY KEY CLUSTERED 
(
	[IdC] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DetalleProveedoresProducto]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DetalleProveedoresProducto](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [varchar](7) NOT NULL,
	[IdProducto] [varchar](7) NOT NULL,
 CONSTRAINT [PK_IdDetalle] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DetalleVentas]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DetalleVentas](
	[IdV] [int] IDENTITY(1,1) NOT NULL,
	[IdFacVenta] [varchar](7) NOT NULL,
	[IdProducto] [varchar](7) NOT NULL,
	[CantidadArticulo] [int] NOT NULL,
	[CostoArticulo] [int] NOT NULL,
 CONSTRAINT [PK_IdV] PRIMARY KEY CLUSTERED 
(
	[IdV] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Empleado]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Empleado](
	[IdEmpleado] [varchar](7) NOT NULL,
	[Cedula] [varchar](11) NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
	[Apellido1] [varchar](10) NOT NULL,
	[Apellido2] [varchar](10) NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono1] [varchar](9) NOT NULL,
	[Telefono2] [varchar](9) NULL,
	[IdTipoEmpleado] [int] NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[Password] [varchar](15) NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_IdEmpledo] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Estado]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Estado](
	[IdEstado] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Descripcion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_IdEstado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Estados]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Estados](
	[IdEstado] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Descripcion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_FacturaCompras]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_FacturaCompras](
	[IdFacCompra] [varchar](7) NOT NULL,
	[IdProveedor] [varchar](7) NOT NULL,
	[IdEmpleado] [varchar](7) NOT NULL,
	[FechaCompra] [datetime] NOT NULL,
	[TotalFactura] [int] NULL,
	[IdEstado] [int] NOT NULL,
	[Aplicado] [bit] NOT NULL,
 CONSTRAINT [PK_IdFacCompra] PRIMARY KEY CLUSTERED 
(
	[IdFacCompra] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_FacturaVentas]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_FacturaVentas](
	[IdFacVenta] [varchar](7) NOT NULL,
	[IdCliente] [varchar](7) NOT NULL,
	[IdEmpleado] [varchar](7) NOT NULL,
	[IdCaja] [varchar](7) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[TotalFactura] [int] NULL,
	[MontoDescuento] [int] NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_IdFacVenta] PRIMARY KEY CLUSTERED 
(
	[IdFacVenta] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MarcaEmpleado]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MarcaEmpleado](
	[IdEmpMarca] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Descripcion] [varchar](8) NOT NULL,
	[IdEmpleado] [varchar](7) NOT NULL,
 CONSTRAINT [PK_IdEmpMarca] PRIMARY KEY CLUSTERED 
(
	[IdEmpMarca] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Marcas]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Marcas](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](20) NOT NULL,
 CONSTRAINT [PK_IdMarca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Productos]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Productos](
	[IdProducto] [varchar](7) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Precio] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[CantidadMinima] [int] NOT NULL,
	[IdMarca] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_IdProducto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Proveedor]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Proveedor](
	[IdProveedor] [varchar](7) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Direccion] [varchar](30) NOT NULL,
	[Telefono1] [varchar](9) NOT NULL,
	[Telefono2] [varchar](9) NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_IdProveedor] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ROLES]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ROLES](
	[ID_ROL] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](20) NOT NULL,
	[DESCRIPCION] [varchar](200) NOT NULL,
 CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED 
(
	[ID_ROL] DESC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TipoCliente]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TipoCliente](
	[IdTipoCliente] [int] IDENTITY(1,1) NOT NULL,
	[TipoCliente] [varchar](10) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_IdTipoCliente] PRIMARY KEY CLUSTERED 
(
	[IdTipoCliente] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TipoEmpleado]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TipoEmpleado](
	[IdTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](25) NOT NULL,
 CONSTRAINT [PK_IdTipoEmpleado] PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpleado] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TiposClientes]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TiposClientes](
	[IdTipoCliente] [int] IDENTITY(1,1) NOT NULL,
	[TipoCliente] [varchar](10) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposClientes] PRIMARY KEY CLUSTERED 
(
	[IdTipoCliente] ASC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_USUARIO]    Script Date: 09/07/2014 06:43:50 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_USUARIO](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[PRIMER_APELLIDO] [varchar](50) NOT NULL,
	[SEGUNDO_APELLIDO] [varchar](50) NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](40) NOT NULL,
	[ID_ROL] [int] NOT NULL,
	[ID_ESTADO] [int] NOT NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] DESC
)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[T_Cliente] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_Empleado] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_FacturaCompras] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_FacturaCompras] ADD  DEFAULT ((0)) FOR [Aplicado]
GO
ALTER TABLE [dbo].[T_FacturaVentas] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_Productos] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_Proveedor] ADD  DEFAULT ((1)) FOR [IdEstado]
GO
ALTER TABLE [dbo].[T_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_T_Clientes_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_Cliente] CHECK CONSTRAINT [FK_T_Clientes_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_Cliente]  WITH CHECK ADD  CONSTRAINT [FK_T_Clientes_T_TipoCliente_IdTipoCliente] FOREIGN KEY([IdTipoCliente])
REFERENCES [dbo].[T_TipoCliente] ([IdTipoCliente])
GO
ALTER TABLE [dbo].[T_Cliente] CHECK CONSTRAINT [FK_T_Clientes_T_TipoCliente_IdTipoCliente]
GO
ALTER TABLE [dbo].[T_Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[T_Clientes] CHECK CONSTRAINT [FK_Clientes_Estados]
GO
ALTER TABLE [dbo].[T_Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TiposClientes] FOREIGN KEY([IdTipoCliente])
REFERENCES [dbo].[T_TiposClientes] ([IdTipoCliente])
GO
ALTER TABLE [dbo].[T_Clientes] CHECK CONSTRAINT [FK_Clientes_TiposClientes]
GO
ALTER TABLE [dbo].[T_DetalleCaja]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleCaja_T_Cajas_IdCaja] FOREIGN KEY([IdCaja])
REFERENCES [dbo].[T_Cajas] ([IdCaja])
GO
ALTER TABLE [dbo].[T_DetalleCaja] CHECK CONSTRAINT [FK_T_DetalleCaja_T_Cajas_IdCaja]
GO
ALTER TABLE [dbo].[T_DetalleCaja]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleCaja_T_Empleados_IdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[T_Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[T_DetalleCaja] CHECK CONSTRAINT [FK_T_DetalleCaja_T_Empleados_IdEmpleado]
GO
ALTER TABLE [dbo].[T_DetalleCompras]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleCompras_T_Facturas_IdFactura] FOREIGN KEY([IdFacCompra])
REFERENCES [dbo].[T_FacturaCompras] ([IdFacCompra])
GO
ALTER TABLE [dbo].[T_DetalleCompras] CHECK CONSTRAINT [FK_T_DetalleCompras_T_Facturas_IdFactura]
GO
ALTER TABLE [dbo].[T_DetalleCompras]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleCompras_T_Productos_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[T_Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[T_DetalleCompras] CHECK CONSTRAINT [FK_T_DetalleCompras_T_Productos_IdProducto]
GO
ALTER TABLE [dbo].[T_DetalleProveedoresProducto]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleProveedoresProducto_T_Productos_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[T_Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[T_DetalleProveedoresProducto] CHECK CONSTRAINT [FK_T_DetalleProveedoresProducto_T_Productos_IdProducto]
GO
ALTER TABLE [dbo].[T_DetalleProveedoresProducto]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleProveedoresProducto_T_Proveedor_IdProveedor] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[T_Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[T_DetalleProveedoresProducto] CHECK CONSTRAINT [FK_T_DetalleProveedoresProducto_T_Proveedor_IdProveedor]
GO
ALTER TABLE [dbo].[T_DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleVentas_T_Facturas_IdVenta] FOREIGN KEY([IdFacVenta])
REFERENCES [dbo].[T_FacturaVentas] ([IdFacVenta])
GO
ALTER TABLE [dbo].[T_DetalleVentas] CHECK CONSTRAINT [FK_T_DetalleVentas_T_Facturas_IdVenta]
GO
ALTER TABLE [dbo].[T_DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_DetalleVentas_T_Productos_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[T_Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[T_DetalleVentas] CHECK CONSTRAINT [FK_T_DetalleVentas_T_Productos_IdProducto]
GO
ALTER TABLE [dbo].[T_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_T_Empleados_T_Departamento_IdDepartamento] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[T_Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[T_Empleado] CHECK CONSTRAINT [FK_T_Empleados_T_Departamento_IdDepartamento]
GO
ALTER TABLE [dbo].[T_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_T_Empleados_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_Empleado] CHECK CONSTRAINT [FK_T_Empleados_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_T_Empleados_T_TipoEmpleado_IdTipoEmpleado] FOREIGN KEY([IdTipoEmpleado])
REFERENCES [dbo].[T_TipoEmpleado] ([IdTipoEmpleado])
GO
ALTER TABLE [dbo].[T_Empleado] CHECK CONSTRAINT [FK_T_Empleados_T_TipoEmpleado_IdTipoEmpleado]
GO
ALTER TABLE [dbo].[T_FacturaCompras]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaCompras_T_Empleados_IdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[T_Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[T_FacturaCompras] CHECK CONSTRAINT [FK_T_FacturaCompras_T_Empleados_IdEmpleado]
GO
ALTER TABLE [dbo].[T_FacturaCompras]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaCompras_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_FacturaCompras] CHECK CONSTRAINT [FK_T_FacturaCompras_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_FacturaCompras]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaCompras_T_Proveedores_IdProveedor] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[T_Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[T_FacturaCompras] CHECK CONSTRAINT [FK_T_FacturaCompras_T_Proveedores_IdProveedor]
GO
ALTER TABLE [dbo].[T_FacturaVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaVentas_T_Cajas_IdCaja] FOREIGN KEY([IdCaja])
REFERENCES [dbo].[T_Cajas] ([IdCaja])
GO
ALTER TABLE [dbo].[T_FacturaVentas] CHECK CONSTRAINT [FK_T_FacturaVentas_T_Cajas_IdCaja]
GO
ALTER TABLE [dbo].[T_FacturaVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaVentas_T_Clientes_IdCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[T_Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[T_FacturaVentas] CHECK CONSTRAINT [FK_T_FacturaVentas_T_Clientes_IdCliente]
GO
ALTER TABLE [dbo].[T_FacturaVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaVentas_T_Empleados_IdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[T_Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[T_FacturaVentas] CHECK CONSTRAINT [FK_T_FacturaVentas_T_Empleados_IdEmpleado]
GO
ALTER TABLE [dbo].[T_FacturaVentas]  WITH CHECK ADD  CONSTRAINT [FK_T_FacturaVentas_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_FacturaVentas] CHECK CONSTRAINT [FK_T_FacturaVentas_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_MarcaEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_T_MarcasEmpleado_T_Empleado_IdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[T_Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[T_MarcaEmpleado] CHECK CONSTRAINT [FK_T_MarcasEmpleado_T_Empleado_IdEmpleado]
GO
ALTER TABLE [dbo].[T_Productos]  WITH CHECK ADD  CONSTRAINT [FK_T_Productos_T_Categorias_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[T_Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[T_Productos] CHECK CONSTRAINT [FK_T_Productos_T_Categorias_IdCategoria]
GO
ALTER TABLE [dbo].[T_Productos]  WITH CHECK ADD  CONSTRAINT [FK_T_Productos_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_Productos] CHECK CONSTRAINT [FK_T_Productos_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_Productos]  WITH CHECK ADD  CONSTRAINT [FK_T_Productos_T_Marcas_IdMarca] FOREIGN KEY([IdMarca])
REFERENCES [dbo].[T_Marcas] ([IdMarca])
GO
ALTER TABLE [dbo].[T_Productos] CHECK CONSTRAINT [FK_T_Productos_T_Marcas_IdMarca]
GO
ALTER TABLE [dbo].[T_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_T_Proveedor_T_Estado_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_Proveedor] CHECK CONSTRAINT [FK_T_Proveedor_T_Estado_IdEstado]
GO
ALTER TABLE [dbo].[T_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_ESTADOS] FOREIGN KEY([ID_ESTADO])
REFERENCES [dbo].[T_Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[T_USUARIO] CHECK CONSTRAINT [FK_USUARIOS_ESTADOS]
GO
ALTER TABLE [dbo].[T_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_ROLES] FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[T_ROLES] ([ID_ROL])
GO
ALTER TABLE [dbo].[T_USUARIO] CHECK CONSTRAINT [FK_USUARIOS_ROLES]
GO
USE [master]
GO
ALTER DATABASE [DB_Veterinaria] SET  READ_WRITE 
GO
