class PaletteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :color1, :color2, :color3
  belongs_to :pattern
end
