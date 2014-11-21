module ChefDruid
  module NodePropertiesHelper
    def node_properties(node, node_type)
      instance_name = node[:opsworks][:instance][:hostname]
      prepare(node[:druid][:properties]).
        merge(prepare(node[:druid].fetch(node_type, {}).fetch(:properties, {})))
        merge(prepare(node[:druid].fetch(node_type, {}).fetch(instance_name, {}).fetch(:properties, {}))).
        merge("druid.service" => node_type)
    end

    private

    def prepare(properties)
      # Clone doesn't seem to work on node
      properties.inject(Hash.new) { |h, (k, v)| h[k] = v unless v.is_a?(Hash); h }
    end
  end
end