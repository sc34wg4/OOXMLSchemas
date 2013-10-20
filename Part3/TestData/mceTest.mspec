<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="file:/C:/Users/makoto/Documents/GitHub/mce-tests/mspec.rnc" type="application/relax-ng-compact-syntax" schematypens="http://relaxng.org/ns/structure/1.0"?>
<description xmlns="http://schemas.openxmlformats.org/mspec" title="Revision2">
    <scenario label="syntax">
        <scenario label="Ignorable">
            <scenario label="example1">
                <context href="Ignorable/example1.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
            <scenario label="example2">
                <context href="Ignorable/example2.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
            <scenario label="incorrectExample">
                <context href="Ignorable/incorrectExample1.xml"/>
                <expectError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="ProcessContent">
            <scenario label="example1">
                <context href="ProcessContent/example1.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
            <scenario label="incorrectExample">
                <context href="ProcessContent/incorrectExample1.xml"/>
                <expectError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="MustUnderstand">
            <scenario label="example1">
                <context href="MustUnderstand/example1.xml"/>
                <expectError understands="" extensionElements=""/>
                <expectNoError understands="http://www.example.com/e1" extensionElements=""/>
            </scenario>
            <scenario label="incorrectExample">
                <context href="MustUnderstand/incorrectExample1.xml"/>
                <expectError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="AlternateContent">
            <scenario label="example1">
                <context href="AlternateContent/example1.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
            <scenario label="example2">
                <context href="AlternateContent/example2.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
            <scenario label="incorrectExample">
                <context href="AlternateContent/incorrectExample1.xml"/>
                <expectError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="Choice">
            <scenario label="example1">
                <context href="Choice/example1.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="Fallback">
            <scenario label="example1">
                <context href="Fallback/example1.xml"/>
                <expectNoError understands="" extensionElements=""/>
            </scenario>
        </scenario>
        <scenario label="ExtensionElements">
            <scenario label="example2">
                <context href="ExtensionElements/example2.xml"/>
                <expectNoError understands="" extensionElements="{http://www.example.com/}foo1"/>
                <expectNoError understands="http://www.example.com/e1"
                    extensionElements="{http://www.example.com/e1}extensionElement"/>
            </scenario>
        </scenario>
    </scenario>
    <scenario label="semantics">
        <scenario label="Step 1">
            <scenario label="example1">
                <context href="Step1/example1.xml"/>
                <expect understands="http://www.example.com/" 
                    extensionElements="{http://www.example.com/e1}baz"
                    href="Step1/example1-root-only.xml"/>
                <expect understands="http://www.example.com/ http://www.example.com/e1"
                    extensionElements="{http://www.example.com/e1}baz" href="Step1/example-both.xml"/>
            </scenario>
        </scenario>
        <scenario label="Step 2">
            <scenario label="example1">
                <context href="Step2/example1-expanded.xml"/>
                <expect
                    understands="http://www.example.com/n1 http://www.example.com/n2 http://www.example.com/n3"
                    extensionElements="" href="Step2/example1-expanded-n1n2n3.xml"/>
                <expect understands="http://www.example.com/n1 http://www.example.com/n3"
                    extensionElements="" href="Step2/example1-expanded-n1n3.xml"/>
                <expect understands="http://www.example.com/n1 http://www.example.com/n2"
                    extensionElements="" href="Step2/example1-expanded-n1n2.xml"/>
                <expect understands="http://www.example.com/n2 http://www.example.com/n3"
                    extensionElements="" href="Step2/example1-expanded-none.xml"/>
                <expect understands="http://www.example.com/n1" extensionElements=""
                    href="Step2/example1-expanded-n1.xml"/>
                <expect understands="http://www.example.com/n2" extensionElements=""
                    href="Step2/example1-expanded-none.xml"/>
                <expect understands="http://www.example.com/n3" extensionElements=""
                    href="Step2/example1-expanded-none.xml"/>
                <expect understands="" extensionElements="" href="Step2/example1-expanded-none.xml"
                />
            </scenario>
        </scenario>
        <scenario label="Step 3">
            <scenario label="example1">
                <context href="Step3/example1.xml"/>
                <expect understands="http://www.example.com/foo http://www.example.com/bar"
                    extensionElements="" href="Step3/example1-foo-and-bar.xml"/>
                <expect understands="http://www.example.com/foo" extensionElements=""
                    href="Step3/example1-foo.xml"/>
                <expect understands="http://www.example.com/bar" extensionElements=""
                    href="Step3/example1-bar.xml"/>
            </scenario>
        </scenario>
    </scenario>
    <scenario label="primer">
        <scenario label="Ex10-1-Processing-Ignorable-attribute">
            <context href="Primer/Ex10-1-Processing-Ignorable-attribute.xml"/>
            <expect
                understands="http://schemas.openxmlformats.org/Circles/v1 http://schemas.openxmlformats.org/Circles/v2 http://schemas.openxmlformats.org/Circles/v3"
                extensionElements=""
                href="Primer/Ex10-1-Processing-Ignorable-attribute-v1-and-v2-and-v3.xml"/>
            <expect
                understands="http://schemas.openxmlformats.org/Circles/v1 http://schemas.openxmlformats.org/Circles/v2"
                extensionElements=""
                href="Primer/Ex10-1-Processing-Ignorable-attribute-v1-and-v2.xml"/>
            <expect understands="http://schemas.openxmlformats.org/Circles/v1" extensionElements=""
                href="Primer/Ex10-1-Processing-Ignorable-attribute-v1.xml"/>
        </scenario>
        <scenario label="Ex10-3-Processing-Ignorable-and-ProcessContent-attributes">
            <context href="Primer/Ex10-3-Processing-Ignorable-and-ProcessContent-attributes.xml"/>
            <expect
                understands="http://schemas.openxmlformats.org/Circles/v1 http://schemas.openxmlformats.org/Circles/v2"
                extensionElements=""
                href="Primer/Ex10-3-Processing-Ignorable-and-ProcessContent-attributes-v1-and-v2.xml"/>
            <expect understands="http://schemas.openxmlformats.org/Circles/v1" extensionElements=""
                href="Primer/Ex10-3-Processing-Ignorable-and-ProcessContent-attributes-v1.xml"/>
        </scenario>
        <scenario label="Ex10-6-Processing-a-MustUnderstand-attribute">
            <context href="Primer/Ex10-6-Processing-a-MustUnderstand-attribute.xml"/>
            <expectNoError understands="http://schemas.openxmlformats.org/Circles/v2" extensionElements=""/>
            <expectError understands="" extensionElements=""/>
        </scenario>
        <scenario label="Ex10-7-Processing-AlternateContent-markup">
            <context href="Primer/Ex10-7-Processing-AlternateContent-markup.xml"/>
            <expect
                understands="http://schemas.openxmlformats.org/Circles/v1 http://schemas.openxmlformats.org/Circles/v2 http://schemas.openxmlformats.org/Circles/v3"
                extensionElements=""
                href="Primer/Ex10-7-Processing-AlternateContent-markup-v1-and-v2-and-v3.xml"/>
            <expect
                understands="http://schemas.openxmlformats.org/Circles/v1 http://schemas.openxmlformats.org/Circles/v2 "
                extensionElements="" href="Primer/Ex10-7-Processing-AlternateContent-markup-v1-and-v2.xml"/>
            <expect understands="http://schemas.openxmlformats.org/Circles/v1" extensionElements=""
                href="Primer/Ex10-7-Processing-AlternateContent-markup-v1.xml"/>
        </scenario>
    </scenario>
</description>
