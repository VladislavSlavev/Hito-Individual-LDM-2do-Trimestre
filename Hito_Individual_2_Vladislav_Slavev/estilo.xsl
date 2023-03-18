<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="css/normalize.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
        <title>Hito Individual</title>
    </head>
    <body>
        <h1>Lista de pedidos</h1>
        <table border="1">
            <tr>
                <th>NºPedido</th>
                <th>Fecha de Compra</th>
                <th>Fecha de Entrega</th>
                <th>Producto(s)</th>
                <th>Total</th>
            </tr>
            <xsl:for-each select="facturacion/year2021/trimestre/pedido/detallesPedido">
                <tr>
                    <td><xsl:value-of select="nPedido"/></td>
                    <td><xsl:value-of select="fechaCompra"/></td>
                    <td><xsl:value-of select="fechaEntrega"/></td>
                    <td><xsl:value-of select="productos"/></td>
                    <td><xsl:value-of select="total"/></td>              
                </tr>
            </xsl:for-each>
            <xsl:for-each select="facturacion/year2022/trimestre/pedido/detallesPedido">
                <tr>
                    <td><xsl:value-of select="nPedido"/></td>
                    <td><xsl:value-of select="fechaCompra"/></td>
                    <td><xsl:value-of select="fechaEntrega"/></td>
                    <td><xsl:value-of select="productos"/></td>
                    <td><xsl:value-of select="total"/></td>              
                </tr>
            </xsl:for-each>    
        </table>
        <h1>Lista de clientes</h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Teléfono</th>
                <th>Direccion</th>
                <th>Email</th>
                <th>Fecha Inclusion</th>
            </tr>
            <xsl:for-each select="facturacion/year2021/trimestre/pedido/cliente">
                <tr>
                    <td><xsl:value-of select="nombreCliente"/></td>
                    <td><xsl:value-of select="apellidosCliente"/></td>
                    <td><xsl:value-of select="telefono"/></td>
                    <td><xsl:value-of select="direccion"/></td>
                    <td><xsl:value-of select="email"/></td>
                    <td><xsl:value-of select="fechaInclusion"/></td>                  
                </tr>
            </xsl:for-each>
            <xsl:for-each select="facturacion/year2022/trimestre/pedido/cliente">
                <tr>
                    <td><xsl:value-of select="nombreCliente"/></td>
                    <td><xsl:value-of select="apellidosCliente"/></td>
                    <td><xsl:value-of select="telefono"/></td>
                    <td><xsl:value-of select="direccion"/></td>
                    <td><xsl:value-of select="email"/></td>
                    <td><xsl:value-of select="fechaInclusion"/></td>                  
                </tr>
            </xsl:for-each>      
        </table> 
        <xsl:for-each select="facturacion/year2021/trimestre/pedido/detallesPedido[@id=12]">
            <h1>Factura del pedido: <xsl:value-of select="nPedido"/></h1>
        </xsl:for-each>
        <xsl:for-each select="facturacion/year2021/trimestre/pedido/detallesPedido[@id=12]">
            <h3>Fecha de compra: <xsl:value-of select="fechaCompra"/></h3>
        </xsl:for-each>
        <xsl:for-each select="facturacion/year2021/trimestre/pedido/detallesPedido[@id=12]">
            <h3>Fecha de entrega: <xsl:value-of select="fechaEntrega"/></h3>
        </xsl:for-each>   
        <xsl:for-each select="facturacion/year2021/trimestre/pedido/cliente[@id=2]">
            <h3>Nombre del cliente: <xsl:value-of select="nombreCliente"/>-<xsl:value-of select="apellidosCliente"/></h3>
        </xsl:for-each>
        <xsl:for-each select="facturacion/year2021/trimestre/pedido/cliente[@id=2]">
            <h3>Dirección: <xsl:value-of select="direccion"/></h3>
        </xsl:for-each>
        <span>.</span>
        <div class="factura">
            <table class="table table-striped">
                <tr>
                    <h2>Detalles</h2>
                </tr>
                <xsl:for-each select="facturacion/year2021/trimestre/pedido/detallesPedido[@id=12]">
                <tr>
                    <th>Numero de pedido:</th>
                    <th><xsl:value-of select="nPedido"/></th>
                </tr>
                <tr>
                    <th>Producto:</th>
                    <th><xsl:value-of select="productos/producto/nombreProducto"/></th>
                </tr>
                <tr>
                    <th>Referencia del producto:</th>
                    <th><xsl:value-of select="productos/producto/refProducto"/></th>
                </tr>
                <tr>
                    <th>Precio:</th>
                    <th><xsl:value-of select="productos/producto/precio"/></th>
                </tr>
                <tr>
                    <th>Unidades:</th>
                    <th><xsl:value-of select="productos/producto/unidades"/></th>
                </tr>
                <tr>
                    <th>Total:</th>
                    <th><xsl:value-of select="total"/></th>
                </tr>
                </xsl:for-each>
            </table>
        </div>
        <h1>Ventas del primer trimestre de 2021</h1>
        <table class="table table-striped">
            <tr>
                <th>NºPedido</th>
                <th>Fecha de Compra</th>
                <th>Fecha de Entrega</th>
                <th>Producto(s)</th>
                <th>Total</th>
            </tr>
            <xsl:for-each select="facturacion/year2021/trimestre[@id=1]/pedido/detallesPedido">
            <tr>
                <td><xsl:value-of select="nPedido"/></td>
                <td><xsl:value-of select="fechaCompra"/></td>
                <td><xsl:value-of select="fechaEntrega"/></td>
                <td><xsl:value-of select="productos"/></td>
                <td><xsl:value-of select="total"/></td>   
            </tr>
            </xsl:for-each>
        </table>
        <h1>Ventas del cuarto trimestre de 2022</h1>
        <table class="table table-striped">
            <tr>
                <th>NºPedido</th>
                <th>Fecha de Compra</th>
                <th>Fecha de Entrega</th>
                <th>Producto(s)</th>
                <th>Total</th>
            </tr>
            <xsl:for-each select="facturacion/year2022/trimestre[@id=4]/pedido/detallesPedido">
            <tr>
                <td><xsl:value-of select="nPedido"/></td>
                <td><xsl:value-of select="fechaCompra"/></td>
                <td><xsl:value-of select="fechaEntrega"/></td>
                <td><xsl:value-of select="productos"/></td>
                <td><xsl:value-of select="total"/></td>   
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
