class SamuelController < ApplicationController
	def show
		fiestas = Fiesta.all 
	 	# render json: fiestas
	 	render json: fiestas.to_json
	end

	def showspecifit 
		aux = Fiesta.exists?((params[:id]).to_i)
		if aux == true
			fiesta = Fiesta.find((params[:id]).to_i)
			render json: fiesta.to_json
		else
			render json: ("El usuario no existe")
		end		
	end	

	def create 
		fiesta = Fiesta.new(fiesta_params)
		fiesta.save
		render json: fiesta.to_json
	end

	def update
		aux = Fiesta.exists?((params[:id]).to_i)
		if aux == true
			fiesta = Fiesta.find((params[:id]).to_i)
			fiesta.update(fiesta_params)
			fiesta.save
			render json: fiesta.to_json
		else
			render json: ("El usuario no existe")
		end
	end

	def delete
		aux = Fiesta.exists?((params[:id]).to_i)
		if aux == true
			fiesta = Fiesta.find((params[:id]).to_i)
			fiesta.delete
			render json: fiesta.to_json
		else
			render json: ("El usuario no existe")
		end
	end

	private

	def fiesta_params
		params.permit(:nombre, :fecha, :reservacion, :lugar)			
	end
end
