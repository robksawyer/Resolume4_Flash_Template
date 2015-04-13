import resolumeCom.parameters.Parameter;

class resolumeCom.parameters.EventParameter extends Parameter
{
		
	private var currentValue:Boolean;
	
	public function EventParameter(name_:String) {
		this.name = name_;
		this.type = 1; //PARAM_TYPE_EVENT
		this.currentValue = false;
	}

	public function getValue() : Boolean {
		return this.currentValue;
	}
	
	public function setValue(value_:Boolean) {
		this.currentValue = value_;
		this.parameterChanged();
	}
	
	public function getXmlRep(): String
	{
		var xmlRep:String =  "<param type='" + getType() + "' name='" + getName() + "'/>";
		return xmlRep;		
	}
	
}