<form $FormAttributes>
	<% if Message %>
		<p id="{$FormName}_error" class="message $MessageType">
			$Message
		</p>
	<% else %>
		<p id="{$FormName}_error" class="message $MessageType"></p>
	<% end_if %>
	
	<fieldset>
		<ul class="messages"></ul>
		
		<!-- Dropdown -->
		<div class="field dropdown">
			<label for="$dataFieldByName(Dropdownfield).id">Dropdown field:</label>
			$dataFieldByName(Dropdownfield)
		</div><!-- /field -->
		
		<!-- Textfield -->
		<div class="field text">
			<label for="$dataFieldByName(Textfield).id">Text field:</label>
			$dataFieldByName(Textfield)
		</div><!-- /field -->
		
		<!-- Emailfield -->
		<div class="field text">
			<label for="$dataFieldByName(Email).id">Email:</label>
			$dataFieldByName(Email)
		</div><!-- /field -->
	</fieldset>
	
	<fieldset>
		<ul class="messages"></ul>
		
		<div class="field textarea">
			<label for="$dataFieldByName(Message).id">Message:</label>
			$dataFieldByName(Message)
		</div><!-- /field -->
		
		<div class="field checkbox">
			$dataFieldByName(TermsConditions)
			<label for="$dataFieldByName(TermsConditions).id">Send me email updates</label>
		</div><!-- /field -->
		
		<div class="field radio">
			<label for="$dataFieldByName(Sex).id">Sex:</label>
			$dataFieldByName(Sex)
		</div><!-- /field -->
		
		<div class="field checkbox">
			<label for="$dataFieldByName(OneColumn).id">One Column:</label>
			<% control dataFieldByName(OneColumn) %>
				$Field(1)
			<% end_control %>
		</div><!-- /field -->
		
		<div class="field checkbox">
			<label for="$dataFieldByName(TwoColumn).id">Two Column:</label>
			<% control dataFieldByName(TwoColumn) %>
				$Field(2)
			<% end_control %>
		</div><!-- /field -->
		
		<div class="field checkbox">
			<label for="$dataFieldByName(ThreeColumn).id">Three Column:</label>
			<% control dataFieldByName(ThreeColumn) %>
				$Field(3)
			<% end_control %>
		</div><!-- /field -->
	</fieldset>
	
	$dataFieldByName(SecurityID)
	
	<% if Actions %>
		<div class="Actions">
			<input type="submit" title="Send" value="Send" name="action_SendContactForm" class="action">
		</div><!-- /Actions -->
	<% end_if %>
</form>