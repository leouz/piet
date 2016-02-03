module Piet
  module CarrierWaveExtension
    def optimize(opts = {})
      ::Piet.optimize(current_path, opts)
    end

    def pngquant(opts = {})      
      colors = (0..256).include?(opts[:colors]) ? opts[:colors] : 256
      ::Piet.pngquant(current_path, colors)
    end
  end
end
