* Dandelion0.6.x *

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
	dandelion analyzeChangeSet: (ChangesOrganizer changeSetNamed: 'Dandelion-utils.st').
	formats := #(outputHtml outputSmix outputPetal outputXmiUml).
	formats do: [:each |dandelion setPropertyArray: {{#outputRootDirectoryArray. {each}}}.
		dandelion perform: each.
	].

---

2021/10/28 11:40 M.Umezawa
