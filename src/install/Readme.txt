* Dandelion0.5beta3 *

Dandelion is a generic Smalltalk code analysis/output framework. 
You can analyze your code and output the information in various formats 
(currently HTML, SMIX, Petal, XMI).

For more details: http://www.mars.dti.ne.jp/~umejava/smalltalk/stClasses/dandelion/index.html 

Example: Please open a FileList to see the results.

"Analyse 'Dandelion-facade' class category and generate HTMLs"
| dandelion |
	dandelion := DlDandelionSystem new.
	dandelion analyze: #('Dandelion-facade').
	dandelion outputHtml.

"Analyse 'Monticello1' changeSet and generate all supported format files"
| dandelion formats |
	dandelion := DlDandelionSystem new.
	dandelion analyzeChangeSet: (ChangeSorter changeSetNamed: 'Monticello1').
	formats := #(outputHtml outputSmix outputPetal outputXmiUml).
	formats do: [:each |dandelion setPropertyArray: {{#outputRootDirectoryArray. {each}}}.
		dandelion perform: each.
	].

---

2004/11/25 12:30 M.Umezawa
