<html> 
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>TF {{jobName}}</title>
        <meta name="application-name" content="Text-Fabric Search Box"/>

        <link rel="stylesheet" href="/server/static/main.css"/>
        {{!css}}
    </head>
    <body>
        <form id="go" method="post">
        <div class="page">
            <div id="sidebar">
                <div status="help">
                    <a href="#">Help</a>
                </div>
                <div status="jobs">
                    <a href="#">Jobs</a>
                </div>
                <div status="options">
                    <a href="#">Options</a>
                </div>
                <div status="export">
                    <a href="#">Export</a>
                </div>
                <div status="about">
                    <a href="#">About</a>
                </div>
            </div>
            <div id="sidebarcont">
                <input type="hidden" id="side" name="side" value="{{side}}"/>
                <div status="help">
                    <div class="header">
                        {{!header}}
                    </div>
                    <details class="help">
                        <summary>Text-Fabric Browser</summary>
                        <p>Explore the {{dataSource}} corpus.</p>
                        <p>Use the
                            <span class="sections">{{defaultCondenseType}}-</span>,
                            <span class="tuples">node-</span>, and
                            <span class="template">search-</span> pads
                            to specify material of interest.</p>
                        <p>Copy individual results to the <span class="tuples">node pad</span>
                           to compare them to each other.</p>
                        <p>Describe your study and export your work as a PDF with links
                           to archived copies of the {{dataSource}} corpus and this tool.</p>
                        <p>Open <b>multiple windows</b> and tabs** with this address,
                           they all communicate with one and the same process that serves the data;
                           as long as that process runs, new tabs and windows open quickly.
                           See <i>Jobs</i>.</p>
                        <p>When you terminate <code>text-fabric</code> on the command line,
                           the data process will also be terminated.</p>
                    </details>
                    <details class="help sections">
                        <summary>{{defaultCondenseType.capitalize()}} pad</summary>
                        <p>Enter a reference here,
                           such as <code>{{exampleSection}}.</code></p>
                        <p>Copy {{defaultCondenseType}}s to here by clicking on a
                           {{defaultCondenseType}} reference in the result list.</p>
                        <p>Click <b>Go</b> to fetch the results.</p>
                        <p>The results of the references appear in the result list,
                           with a negative sequence number.</p>
                    </details>
                    <details class="help tuples">
                        <summary>Node Pad</summary>
                        <p>Enter a node or list of nodes here,
                           such as <code>123</code> or
                           <code>123,456,789</code>.</p>
                        <p>Copy the nodes of a result to here by clicking on
                           the sequence number of a result in the result list.</p>
                        <p>Copy a node to here by clicking on its number
                           (when the option <i>show nodes</i> is checked).</p>
                        <p>Click <b>Go</b> to fetch the results.</p>
                        <p>The results of the nodes appear in the result list,
                           with a negative sequence number.</p>
                    </details>
                    <details class="help template">
                        <summary>Search Pad</summary>
                        <p>Enter a search template here.
                           See the buttons on top for the docs.</p>
                        <p>Click <b>Go</b> to fetch the results.</p>
                        <p>The results of the search appear in the result list,
                           with a positive sequence number.</p>
                    </details>
                    <details class="help">
                        <summary>Result list</summary>
                        <p>Group results by {{defaultCondenseType}}:
                           see the <i>condense</i> option.</p>
                        <p>Click the triangle to expand a result into a pretty view.</p>
                        <p>If nothing happens, check the <i>condense</i> option:
                           objects that are bigger than the condense object type,
                           will not be expanded into pretty view. Either uncheck the 
                           <i>condense</i> option or select a bigger condense type.</p>
                        <p>Click the <i>expand all</i> checkbox to collapse and open all results.</p>
                        <p>Click the sequence number to add the nodes in this result to the <i>node pad</i>.</p>
                        <p>Click the reference, to add it to the <i>reference pad</i>.</p>
                        <p>Use the navigation button to walk through the results.<p>
                        <p>Results that you have expanded remain in view.</p>
                    </details>
                    <details class="help">
                        <summary>Jobs</summary>
                        <p>Your job will be saved in a file with extension <code>{{EXTENSION}}</code>
                           in the current directory.</p>
                        <p>By default this is <code>{{dataSource}}-DefaulT{{EXTENSION}}</code>.</p>
                        <p>Go to another directory by typing (or pasting) the other directory
                           and hitting <b>change directory</b>. 
                        <p>Rename or duplicate your job, by typing a new name in the name field.</p>
                        <p>Load an other job from the same directory by selecting
                           the name under which it has been saved.
                           This job will be loaded in a new tab.
                           So you can work with multiple jobs in multiple tabs with only one running
                           <code>text-fabric</code> instance.</p>
                    </details>
                    <details class="help">
                        <summary>Options</summary>
                        <p><b>Link column</b> The column number whose contents will be hyperlinked to the online version
                           of the corpus.</p>
                        <p><b>Condense results</b> Show the results grouping all nodes in result tuples into
                           containers, such as {{defaultCondenseType}}s.
                           The containers are <i>pretty</i>-displayed, with the result nodes in it highlighted.
                           Choose the container type as you wish.</p>
                        <p><b>Show nodes</b> Show the node number for every object in the results.
                           The node number is your access to all information about that object.
                           If you click on it, it will be copied to the <i>node pad</i>.</p>
                    </details>
                    <details class="help">
                        <summary>Export</summary>
                        <p>Export your results. Provide your name, title, and description (markdown is supported),
                           and click <b>Export</b>.</p>
                        <p>Several things will be exported: a PDF that reflects the results you see on your screen,
                           complete with metadata and description; a markdown file with the metadata and description;
                           tab-separated files corresponding to the results of the the contents of the pads: these
                           files contain the node numbers only, but there is also a file <code>CONTEXT.tsv</code>
                           that contains full corpus information of every node in every result. 
                        <p>The exported page opens in a new window or tab, formatted for saving as PDF.</p>
                        <p>Use your browser to export this page to PDF.</p>
                        <p>The PDF will contain a complete description of your work, with persistent links
                           to the corpora and the tools, with additional metadata, and with the information
                           you specify.</p>
                        <p><b>Tip</b> Archive this PDF in a repository, and you can cite your work properly.</p>
                    </details>
                </div>
                <div status="jobs">
                    <p class="ilab">
                        Working directory
                    </p>
                    <div>
                        <input
                            class="name{{' eline' if dirMsg else ''}}" type="text"
                            name="jobDir" value="{{jobDir}}"
                            placeholder="working directory"
                        />
                        <p class="eline">{{dirMsg}}</p>
                        <button
                            class="l" type="submit" name="chdir" id="chdir" value="1"
                        > change directory
                        </button>
                    </div>
                    <p class="ilab">
                        Name of this job:
                    </p>
                    <div>
                        <input
                            class="name" type="text"
                            name="jobName" value="{{jobName}}"
                            placeholder="job name"
                        />
                        <input type="hidden" name="jobNameHidden" value="{{jobNameHidden}}"/>
                        <span>
                            <button
                                class="m" type="submit" name="rename" id="rename" value="1"
                            > rename
                            </button>
                            <button
                                class="m" type="submit" name="duplicate" id="duplicate" value="1"
                            > duplicate
                            </button>
                        </span>
                    </div>
                    <p class="ilab">Jobs in this directory:</p>
                    <input
                        type="hidden"
                        id="jobh"
                        name="otherJobDo" value=""
                    />
                    <select
                        class=""
                        id="job"
                        name="otherJob" value="{{otherJob}}"
                    >
                        {{!otherJobs}}
                    </select>
                    <button
                        class="xl" type="submit" formtarget="_new"
                    > Load in new tab
                    </button>
                </div>
                <div status="options">
                    <div>
                        <input
                            class="r int" type="text" id="lnk" name="linked" value="{{linked}}"
                            placeholder="1"
                        /> <span class="ilab">link column</span>
                    </div>
                    <div>
                        <details id="condd" {{'open' if condensedAtt else ''}}>
                            <summary>
                                <input
                                    class="r" type="checkbox" id="cond" name="condensed" {{condensedAtt}}
                                /> <span class="ilab">condense results</span>
                            </summary>
                            {{!condenseOpts}}
                        </details>
                    </div>
                    <div>
                        <input
                            class="r" type="checkbox" id="withn" name="withNodes" {{withNodesAtt}}
                        /> <span class="ilab">show nodes</span>
                    </div>
                    {{!options}}
                </div>
                <div status="export">
                    <div>
                        <p class="ilab">Author</p>
                        <div>
                            <input
                                class="name" type="text" name="author" value="{{author}}"
                                placeholder="My Name"
                            />
                        </div>
                        <p class="ilab">Title</p>
                        <div>
                            <input
                                class="name" type="text" name="title" value="{{title}}"
                                placeholder="Title"
                            />
                        </div>
                        <p class="ilab">Description</p>
                        <div class="description">
                            <textarea
                                class="description" name="description"
                                placeholder="Description"
                            >{{description}}</textarea>
                        </div>
                        <p class="buttons">
                            <button
                                class="xl" type="submit" formtarget="_new" id="exph" name="export" value="1"
                            > Export
                            </button>
                        </p>
                    </div>
                </div>
                <div status="about">
                    <div>
                        <p><a target="_blank" href="https://github.com/Dans-labs/text-fabric">Text-Fabric</a> is made by
                           <a target="_blank" href="https://dans.knaw.nl/en/about/organisation-and-policy/staff/roorda">Dirk Roorda</a>,
                           <a target="_blank" href="https://dans.knaw.nl/en">DANS (Data Archiving and Networked Services</a>
                        </p>
                    </div>
                    <div><img class="mainlogo" src="/server/static/dans.png"/></div>
                </div>
            </div>
            <div class="leftcol">
                <p class="ilab">{{defaultCondenseType}} pad</p>
                <textarea
                    id="sections" class="sections" name="sections"
                    placeholder="{{exampleSection}}"
                >{{sections}}</textarea>
                <div class="messages">
                    {{!sectionMessages}}
                </div>
                <p class="ilab">node pad</p>
                <textarea
                    id="tuples" class="tuples" name="tuples"
                    placeholder="100,101,102"
                >{{tuples}}</textarea>
                <div class="messages">
                    {{!tupleMessages}}
                </div>
                <p class="ilab">search pad</p>
                <textarea
                    class="template" name="searchTemplate"
                    placeholder="{{defaultCondenseType}}"
                >{{searchTemplate}}</textarea>
                <div class="messages">
                    {{!queryMessages}}
                </div>
                <p class="buttons"><button class="xl" type="submit">Go</button></p>
            </div>
            <div class="midcol">
                <div class="navigation">
                    <div>
                        <input
                            type="checkbox" id="expac"
                        /> <span class="ilab">expand all</span>
                        <input type="hidden" name="expandAll" id="expa" value="{{expandAll}}"/>
                    </div>
                    <div>
                        <input
                            class="r int" type="text" id="pos" name="position" value="{{position}}"
                        /> <span class="ilab">current position</span>
                    </div>
                    <div>
                        <input
                            class="r int" type="text" name="batch" value="{{batch}}"
                        /> <span class="ilab">results per page</span>
                    </div>
                </div>
                <div class="pages">
                    {{!pages}}
                </div>
            </div>
            <div class="rightcol">
                <input type="hidden" id="op" name="opened" value="{{opened}}"/>
                {{!table}}
            </div>
        </div>
        </form>
        <script src="/server/static/jquery.js"></script>
        <script src="/server/static/tf.js"/></script>
    </body>
</html>