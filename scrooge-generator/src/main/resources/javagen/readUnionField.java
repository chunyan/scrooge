case {{id}}: /* {{fieldName}} */
  switch (_field.type) {
    case TType.{{constType}}:
      {{fieldType}} {{valueVariableName}};
      {{>readValue}}
      result = {{fieldName}}({{valueVariableName}});
      break;
    default:
      TProtocolUtil.skip(_iprot, _field.type);
  }
  break;
