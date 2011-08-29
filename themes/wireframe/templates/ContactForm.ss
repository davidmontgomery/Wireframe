<form $FormAttributes>
	<% if Message %>
		<p id="{$FormName}_error" class="message $MessageType">
			$Message
		</p>
	<% else %>
		<p id="{$FormName}_error" class="message $MessageType"></p>
	<% end_if %>
	
	<div id="errorBox">
		<ul></ul>
	</div>
	
	<div class="field dropdown">
		<label for="$dataFieldByName(Title).id">Title:</label>
		$dataFieldByName(Title)
	</div>
	<div class="field text">
		<label for="$dataFieldByName(Name).id">Name:</label>
		$dataFieldByName(Name)
	</div>
	<div class="field text">
		<label for="$dataFieldByName(Email).id">Email:</label>
		$dataFieldByName(Email)
	</div>
	<div class="field textarea">
		<label for="$dataFieldByName(Message).id">Message:</label>
		$dataFieldByName(Message)
	</div>
	<div class="field checkbox">
		$dataFieldByName(TermsConditions)
		<label for="$dataFieldByName(TermsConditions).id">Terms and conditions</label>
	</div>
	<div class="field radio">
		<label for="$dataFieldByName(Sex).id">Sex:</label>
		$dataFieldByName(Sex)
	</div>

	$dataFieldByName(SecurityID)

	<% if Actions %>
	<div class="Actions">

					<input type="submit" title="Send" value="Send" name="action_SendContactForm" class="action ">
				</div>
				<% end_if %>
			
			

</form>
