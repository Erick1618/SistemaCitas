<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_Entidades.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Presentacion.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphEntidades" runat="server">
 
       <section class="hero-wrap js-fullheight" style="background-image: url('../images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
          <div class="col-md-10 ftco-animate text-center">
          	<div class="icon">
	          	<img src="../images/ICONO1.png" height="150" width="150">
          	</div>
            <h1>Beautyzone</h1>
            <h1>Maquillaje &amp; spa</h1>
            <div class="row justify-content-center">
	            <div class="col-md-7 mb-3">
	            	<p style="color: black">Donde la ciencia y la belleza se unen.</p>
	            </div>
	          </div>
            <p>
            	
            </p>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-intro" style="background-image: url(../images/intro.jpg);">
			<div class="container">
				<div class="row justify-content-end">
					<div class="col-md-6">
						<div class="heading-section ftco-animate">
	            <h2 class="mb-4">Servicios</h2>
	          </div>
	          <ul class="mt-5 do-list">
	          	<li style="color: darkcyan" style="text-shadow: 1px 1px 2px black" class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Sociales</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Novia</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje XV</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Fantas&iacute;a</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Special FX</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Cine</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Maquillaje Editorial</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Faciales</li>
                <li style="color: darkcyan" style="text-shadow: 1px 1px 2px black"  class="ftco-animate"><span style="color: darkcyan" class="ion-ios-checkmark-circle mr-3"></span>Masajes Reductivos</li>
	          </ul>
					</div>
				</div>
			</div>
		</section>
<!--
		<section class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-4 d-flex align-items-stretch">
						<div class="offer-deal text-center px-2 px-lg-5">
							<div class="img" style="background-image: url(images/offer-deal-1.jpg);"></div>
							<div class="text mt-4">
								<h3 class="mb-4">Reserva tu tratamiento</h3>
								<p class="mb-5">Lista de tratamientos</p>
								<p><a href="#" class="btn btn-white px-4 py-3"> Boton que va a la pagina <span class="ion-ios-arrow-round-forward"></span></a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 d-flex align-items-stretch">
						<div class="offer-deal active text-center px-2 px-lg-5">
							<div class="img" style="background-image: url(images/offer-deal-2.jpg);"></div>
							<div class="text mt-4">
								<h3 class="mb-4">Paquetes disponibles</h3>
								<p class="mb-5">Lista de paquetes disponibles</p>
								<p><a href="#" class="btn btn-white px-4 py-3"> Boton que va a la pagina <span class="ion-ios-arrow-round-forward"></span></a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 d-flex align-items-stretch">
						<div class="offer-deal text-center px-2 px-lg-5">
							<div class="img" style="background-image: url(images/offer-deal-3.jpg);"></div>
							<div class="text mt-4">
								<h3 class="mb-4">Ofertas especiales</h3>
								<p class="mb-5">Lista de ofertas disponibles.</p>
								<p><a href="#" class="btn btn-white px-4 py-3"> Boton que va a la pagina <span class="ion-ios-arrow-round-forward"></span></a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

    <section class="ftco-section ftco-section-services bg-light">
    	<div class="container-fluid px-md-5">
    		<div class="row">
    			<div class="col-md-6 col-lg-3">
						<div class="services text-center ftco-animate">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-candle"></span>
							</div>
							<div class="text mt-3">
								<h3>Tratamiento 1</h3>
								<p>Definicion del tratamiento</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="services text-center ftco-animate">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-beauty-treatment"></span>
							</div>
							<div class="text mt-3">
								<h3>Tratamiento 2</h3>
								<p>Definicion del tratamiento</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="services text-center ftco-animate">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-stone"></span>
							</div>
							<div class="text mt-3">
								<h3>Tratamiento 3</h3>
								<p>Definicion del tratamiento</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="services text-center ftco-animate">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-relax"></span>
							</div>
							<div class="text mt-3">
								<h3>Tratamiento 4</h3>
								<p>Definicion del tratamiento</p>
							</div>
						</div>
					</div>
				</div>
    	</div>
    </section>
-->
	  <section class="ftco-section">
	  	<div class="container-fluid px-md-5">
	  		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-12 heading-section ftco-animate text-center">
            <h3 style="color: darkcyan" class="subheading">Servicios</h3>
            <h2 class="mb-1">Tratamientos</h2>
          </div>
        </div>
        <div class="row align-items-center">
        	<div class="col-lg-4">
        		<div class="row no-gutters">
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-right-0 border-bottom-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-candle"></span>
									</div>
									<div class="text mt-2">
										<h3>Sociales</h3>
										<p>Con el propósito de que encaje con el evento u ocasión especial al que hay que asistir. Para ello se encarga de destacar la belleza y potenciar los rasgos más favorecedores</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-bottom-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-spa-1"></span>
									</div>
									<div class="text mt-2">
										<h3>Novia</h3>
										<p>Consiste en realzar lo más bonito de la prometida: una piel iluminada, cejas delineadas y una mirada intensa. Es decir, que demuestre estilo y elegancia sin sobrecargar.</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-right-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-stone"></span>
									</div>
									<div class="text mt-2">
										<h3>Fantas&iacute;a</h3>
										<p>Es uno donde usted puede dejar volar su imaginación permitiéndole que su creatividad se manifieste en todos los sentidos. Este tipo de maquillaje tiende a exagerar los matices y detalles utilizando la técnica que más le guste</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-lotus"></span>
									</div>
									<div class="text mt-2">
										<h3>Special FX</h3>
										<p>Es el tipo de maquillaje para la creación de efectos especiales de caracterización. Usado generalmente en toda obra dramatizada.</p>
									</div>
								</div>
        			</div>
        		</div>
        	</div>


        	<div class="col-lg-4 d-flex align-items-stretch">
        		<div id="accordion" class="myaccordion w-100 text-center py-5 px-1 px-md-4">
        			<div>
	        			<h3>Precios</h3>
        			</div>
						  <div class="card">
						    <div class="card-header" id="headingOne">
						      <h2 class="mb-0">
						        <button class="d-flex align-items-center justify-content-between btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						          Maquillajes
						          <i class="fa" aria-hidden="true"></i>
						        </button>
						      </h2>
						    </div>
						    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
						      <div class="card-body text-left">
						      	<ul>
						      		<li class="d-flex">
						      			<span>Sociales</span>
						      			<span>$400</span>
						      		</li>
						      		<li class="d-flex">
						      			<span>Novia / XV</span>
						      			<span>$2.2k</span>
						      		</li>
						      		<li class="d-flex">
						      			<span>Fantas&iacute;a</span>
						      			<span>xImg</span>
						      		</li>
						      		<li class="d-flex">
						      			<span>Special FX</span>
						      			<span>xD&iacute;a</span>
						      		</li>
                                    <li class="d-flex">
						      			<span>Cine</span>
						      			<span>xD&iacute;a</span>
						      		</li>
                                    <li class="d-flex">
						      			<span>Editorial</span>
						      			<span>xD&iacute;a</span>
						      		</li>
						      	</ul>
						      </div>
						    </div>
						  </div>

				
						</div>
        	</div>


        	<div class="col-lg-4">
        		<div class="row no-gutters">
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-right-0 border-bottom-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-beauty-treatment"></span>
									</div>
									<div class="text mt-2">
										<h3>Cine</h3>
										<p>No es decorar para embellecer sino transformar a una persona en otra, o en cualquier personaje de ficción que requiera un guión de cine.</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-bottom-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-relax"></span>
									</div>
									<div class="text mt-2">
										<h3>Editorial</h3>
										<p>Es un estilo que por lo general no se utiliza todos los días, pero es empleado en pasarelas y sesiones fotográficas.</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border border-right-0 p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-massage"></span>
									</div>
									<div class="text mt-2">
										<h3>Faciales</h3>
										<p>Los tratamientos faciales se realizan  adecuandonos conforme a la edad y  a las necesidades de cada piel utilizando siempre los mejores productos de más alta calidad así como la aparatología con tecnología de punta</p>
									</div>
								</div>
        			</div>
        			<div class="col-md-6 d-flex align-items-stretch">
        				<div class="treatment w-100 text-center ftco-animate border p-3 py-4">
									<div class="icon d-flex justify-content-center align-items-center">
										<span style="color: darkcyan" class="flaticon-rose"></span>
									</div>
									<div class="text mt-2">
										<h3>Masajes Reductivos</h3>
										<p>Los tratamientos reductivos se realizan de acuerdo a las necesidades que presenta cada persona, utilizamos  distintas técnicas de masaje reductivo y desintoxicacion , así como distinta aparatología incluyendo lipolaser, cavitacion radio frecuencia y corriente galvanica.</p>
									</div>
								</div>
        			</div>
        		</div>
        	</div>
        </div>
	  	</div>
	  </section>


    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-1">Tabla de precios</h2>
          </div>
        </div>
        <div class="row">
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h1 style="color: darkcyan" class="heading-2 my-4">Facial Completo</h1>
	            <span class="price"><sup style="color: darkcyan">$</sup> <span style="color: darkcyan" class="number">1200</span></span>
	            <h3 class="heading-2 my-4">Disfruta de</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Limpieza Facial</li>
	              <li>Para piel seca, grasa o mixta</li>
	              <li>Elimina sucieda profunda</li>
                  <li>Hidratacion facial</li>
                  <li>Reduccion de arrugas</li>
                  <li>Reduce manchas y acn&eacute;</li>
	            </ul>

	            
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h1 style="color: darkcyan" class="heading-2 my-4">Facial Basico</h1>
	            <span class="price"><sup style="color: darkcyan">$</sup> <span style="color: darkcyan" class="number">400</span></span>
	            
	            <h3 class="heading-2 my-4">Disfruta de</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Limpieza Facial</li>
	              <li>Para piel seca, grasa o mixta</li>
	              <li>Elimina sucieda profunda</li>
	            </ul>

	            
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h2 style="color: darkcyan" class="heading-2 my-4">Masajes Reductivos</h2>
	            <span class="price"><sup style="color: darkcyan">$</sup> <span style="color: darkcyan" class="number">4500</span></span>
	            <span class="excerpt d-block">Paquete de 10 sesiones</span>
	            
	            <h3 class="heading-2 my-4">Disfruta de</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Ultracavitaci&oacute;n</li>
	              <li>Radiofrecuencia</li>
	              <li>Lipol&aacute;ser</li>
	              <li>Corriente Galv&aacute;nica</li>
                  <li></li>
                  <li>&#40;La aparatolog&iacute;a se utiliza de acuerdo a las necesidades requeridas del cliente&#41;</li>
	            </ul>

	            
	            </div>
	          </div>
	        </div>
	      </div>
      </div>
    </section>


    <!--<section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-10 heading-section ftco-animate text-center">
            <h3 class="subheading">Testimony</h3>
            <h2 class="mb-1">Successful Stories</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                  	<div class="line pl-5">
	                    <p class="mb-4 pb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_1.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">Gabby Smith</p>
		                    <span class="position">Customer</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                    <div class="line pl-5">
	                    <p class="mb-4 pb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>

                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_2.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">Floyd Weather</p>
		                    <span class="position">Customer</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                    <div class="line pl-5">
	                    <p class="mb-4 pb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>

                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_3.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">James Dee</p>
		                    <span class="position">Customer</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                    <div class="line pl-5">
	                    <p class="mb-4 pb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>

                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_4.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">Lance Roger</p>
		                    <span class="position">Customer</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                    <div class="line pl-5">
	                    <p class="mb-4 pb-1">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>

                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_2.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">Kenny Bufer</p>
		                    <span class="position">Customer</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center">
        	<div class="col-md-10">
        		<div class="row">
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="2560">0</strong>
		              	<span>Happy Customers</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="60">0</strong>
		              	<span>Treatments</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="50">0</strong>
		              	<span>Years of Experience</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<strong class="number" data-number="100">0</strong>
		              	<span>Lesson Conducted</span>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h3 class="subheading">Blog</h3>
            <h2 class="mb-1">Recent Posts</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">25</span>
              		</div>
              		<div class="two">
              			<span class="yr">2019</span>
              			<span class="mos">September</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a href="#">Is wellness the new luxury</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">25</span>
              		</div>
              		<div class="two">
              			<span class="yr">2019</span>
              			<span class="mos">September</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a href="#">Is wellness the new luxury</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">25</span>
              		</div>
              		<div class="two">
              			<span class="yr">2019</span>
              			<span class="mos">September</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a href="#">Is wellness the new luxury</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>-->

		<section class="ftco-gallery ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h3 style="color: darkcyan" class="subheading">Galeria</h3>
            <h2 class="mb-1">Ultimas fotos</h2>
          </div>
        </div>
    		<div class="row">
					<div class="col-md-3 ftco-animate">
						<a href="../images/gallery-1.jpeg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(../images/gallery-1.jpeg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="../images/gallery-2.jpeg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(../images/gallery-2.jpeg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="../images/gallery-3.jpeg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(../images/gallery-3.jpeg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="../images/gallery-4.jpeg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(../images/gallery-4.jpeg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
        </div>
    	</div>
    </section>

		
    
</asp:Content>
