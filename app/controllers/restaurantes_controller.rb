class RestaurantesController < ApplicationController

  def index
#   @restaurantes = Restaurante.find(:all, :order => "nome")
    @restaurantes = Restaurante.paginate :page=> params['page'], :per_page=>3, :order => "nome"
    respond_to do |format|
      format.html
      format.xml {render :xml => @restaurantes[0]}
    end
  end

  def show
    @restaurante = Restaurante.find(params[:id])
  end
  def new
    @restaurante = Restaurante.new
  end
  def create
    @restaurante = Restaurante.new(params[:restaurante])
    if @restaurante.save
      flash[:notice] = "Gravado com sucesso"
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "new"
    end
  end
  def edit
    @restaurante = Restaurante.find(params[:id])
  end
  def update
    @restaurante = Restaurante.find(params[:id])
    if @restaurante.update_attributes(params[:restaurante])
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "edit"
    end
  end
  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to(:action => "index")
 end

  def busca
    @restaurantes = []
    @restaurantes << Restaurante.find_by_especialidade(params[:teste])
    render :action => "index"
  end

end
