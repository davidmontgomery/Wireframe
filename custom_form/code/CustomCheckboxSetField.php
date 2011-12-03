<?php

class CustomCheckboxSetField extends CheckboxSetField{
    
    private $customClass = "";
    
    public function setCustomClass($class){
        $this->customClass = $class;
    }
    
    function Field($cols = 3) {
//		Requirements::css(SAPPHIRE_DIR . '/css/CheckboxSetField.css');

		$source = $this->source;
		$values = $this->value;

		// Get values from the join, if available
		if(is_object($this->form)) {
			$record = $this->form->getRecord();
			if(!$values && $record && $record->hasMethod($this->name)) {
				$funcName = $this->name;
				$join = $record->$funcName();
				if($join) {
					foreach($join as $joinItem) {
						$values[] = $joinItem->ID;
					}
				}
			}
		}
		
		// Source is not an array
		if(!is_array($source) && !is_a($source, 'SQLMap')) {
			if(is_array($values)) {
				$items = $values;
			} else {
				// Source and values are DataObject sets.
				if($values && is_a($values, 'DataObjectSet')) {
					foreach($values as $object) {
						if(is_a($object, 'DataObject')) {
							$items[] = $object->ID;
						}
				   }
				} elseif($values && is_string($values)) {
					$items = explode(',', $values);
					$items = str_replace('{comma}', ',', $items);
				}
			}
		} else {
			// Sometimes we pass a singluar default value thats ! an array && !DataObjectSet
			if(is_a($values, 'DataObjectSet') || is_array($values)) {
				$items = $values;
			} else {
				$items = explode(',', $values);
				$items = str_replace('{comma}', ',', $items);
			}
		}
			
		if(is_array($source)) {
			unset($source['']);
		}
		
		$odd = 0;
		$options = '';
		
		if ($source == null) {
			$source = array();
			$options = "<li>No options available</li>";
		}
        
        $i = 0;
		$limit = ceil(count($source) / $cols);
		
		$html = "<div id=\"{$this->id()}\"><ul class=\"optionset checkboxsetfield{$this->extraClass()}\">\n";
		if($source) foreach($source as $index => $item) {
			if ($i == $limit) {
				$i = 0;
				$html .= "</ul><ul class=\"optionset checkboxsetfield{$this->extraClass()}\">\n";
			}
			if(is_a($item, 'DataObject')) {
				$key = $item->ID; 
				$value = $item->Title;
			} else {
				$key = $index;
				$value = $item;
			}
			
			$odd = ($odd + 1) % 2;
			$extraClass = 'val' . str_replace(' ', '', $key);
			$itemID = $this->id() . '_' . ereg_replace('[^a-zA-Z0-9]+', '', $key);
			$checked = '';
			
			if(isset($items)) {
				$checked = (in_array($key, $items) || in_array($key, $this->defaultItems)) ? ' checked="checked"' : '';
			}

			$disabled = ($this->disabled || in_array($key, $this->disabledItems)) ? $disabled = ' disabled="disabled"' : '';

            $html .= "<li class=\"$extraClass\"><input id=\"$itemID\" name=\"$this->name[$key]\" type=\"checkbox\" value=\"$key\"$checked $disabled class=\"checkbox $this->customClass\" /> <label for=\"$itemID\">$value</label></li>\n"; 
			$i++;
		}
		
		return $html . "</ul></div>\n"; 
	}
    
}
