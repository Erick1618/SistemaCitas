USE [BeautyZone]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[IdRegistroCita] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Cliente] [nvarchar](100) NOT NULL,
	[Servicio] [nvarchar](100) NOT NULL,
	[Fecha] [nvarchar](100) NOT NULL,
	[Hora] [nchar](10) NOT NULL,
	[Total] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Cita_1] PRIMARY KEY CLUSTERED 
(
	[IdRegistroCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [nvarchar](150) NOT NULL,
	[ApellidosCliente] [nvarchar](150) NOT NULL,
	[CorreoCliente] [nvarchar](100) NULL,
	[FechaNacimiento] [nvarchar](100) NOT NULL,
	[CelularCliente] [char](10) NULL,
	[Contrasena] [nvarchar](100) NOT NULL,
	[Administrador] [bit] NOT NULL,
 CONSTRAINT [PK_Clientess] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[IdServicios] [int] IDENTITY(1,1) NOT NULL,
	[Servicio] [nvarchar](100) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[IdServicios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AgendaCitas]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AgendaCitas]
 (

    @IdCliente int
    )
AS 

 SELECT * FROM [Citas] WHERE ([IdCliente] = @IdCliente) Order By Fecha
      





GO
/****** Object:  StoredProcedure [dbo].[LstGeneral]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[LstGeneral]
    (
    @NombreTabla nvarchar(50),
    @OrdenadoPor nvarchar(250)
    )
AS 
BEGIN
   DECLARE @SQL nvarchar(500)
   SET @SQL = 'SELECT * FROM ' + @NombreTabla + ' ORDER BY ' + @OrdenadoPor;
      EXECUTE(@SQL)
	
END

GO
/****** Object:  StoredProcedure [dbo].[RegCitas]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegCitas]
(
    @Accion char(25),
	@IdRegistroCita int,
	@IdCliente int,
	@Cliente nvarchar(100),
	@Servicio nvarchar(100),
	@Fecha nvarchar(100),
	@Hora nchar(10),
	@Total nchar(50)
)AS
BEGIN
	IF @Accion = 'INSERTAR'
	  BEGIN
	   INSERT Citas(IdCliente,Cliente,Servicio,Fecha,Hora,Total)
	   VALUES(@IdCliente,@Cliente,@Servicio,@Fecha,@Hora,@Total)
	   end
	IF @Accion = 'BORRAR'
	 BEGIN
	   DELETE FROM Citas WHERE IdRegistroCita = @IdRegistroCita
     end

	 IF @Accion = 'MODIFICAR'
	  BEGIN 
	  UPDATE Citas SET

	  IdCliente = @IdCliente,
	  Cliente = @Cliente,
	  Servicio = @Servicio,
	  Fecha = @Fecha,
	  Hora = @Hora,
	  Total = @Total
	  WHERE IdRegistroCita = @IdRegistroCita
	  END
END
GO
/****** Object:  StoredProcedure [dbo].[TServicios]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TServicios]
(
    @Accion char(25),
	@IdServicios int,
	@Servicio int,
	@Precio nvarchar(100)
	
)AS
BEGIN
	IF @Accion = 'INSERTAR'
	  BEGIN
	   INSERT Servicios(Servicio,Precio)
	   VALUES(@Servicio,@Precio)
	   end
	IF @Accion = 'BORRAR'
	 BEGIN
	   DELETE FROM Servicios WHERE IdServicios = @IdServicios
     end

	 IF @Accion = 'MODIFICAR'
	  BEGIN 
	  UPDATE Servicios SET

	  Servicio = @Servicio,
	  Precio = @Precio
	 
	  WHERE IdServicios = @IdServicios
	  END
END
GO
/****** Object:  StoredProcedure [dbo].[Usuarios]    Script Date: 05/01/2021 04:43:59 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usuarios]
(
    @Accion char(25),
	@IdUsuario int,
	@NombreCliente nvarchar(100),
	@ApellidosCliente nvarchar(100),
	@CorreoCliente nvarchar(100),
	@FechaNacimiento nvarchar(100),
	@CelularCliente char(10),
	@Contrasena nvarchar(100),
	@Administrador bit

)AS
BEGIN
	IF @Accion = 'INSERTAR'
	  BEGIN
	   INSERT Clientes(NombreCliente,ApellidosCliente,CorreoCliente,FechaNacimiento,CelularCliente,Contrasena,Administrador)
	   VALUES(@NombreCliente,@ApellidosCliente,@CorreoCliente,@FechaNacimiento,@CelularCliente,@Contrasena,@Administrador)
	   end
	IF @Accion = 'BORRAR'
	 BEGIN
	   DELETE FROM Clientes WHERE IdUsuario = @IdUsuario
     end
	 IF @Accion = 'MODIFICAR'
	  BEGIN 
	  UPDATE Clientes SET
	  NombreCliente = @NombreCliente,
	  ApellidosCliente= @ApellidosCliente,
	  CorreoCliente = @CorreoCliente,
	  FechaNacimiento = @FechaNacimiento,
	  CelularCliente = @CelularCliente,
	  Contrasena = @Contrasena,
	  Administrador = @Administrador
	  WHERE IdUsuario = @IdUsuario
	  END
END
GO
