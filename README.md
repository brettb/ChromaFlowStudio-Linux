# ChromaFlowStudio
Python GUI Client For ChromaDB - Full Management and Visualisations

![image](https://github.com/user-attachments/assets/61e12d9e-7d91-41e3-bb93-94158b2faa18)

![image](https://github.com/user-attachments/assets/b24f0fef-0834-4038-8a23-5a21e115089e)

![image](https://github.com/user-attachments/assets/0cd4a43e-5079-4232-8c3a-38271e553699)

Introducing Chroma Flow Studio.

The swiss-army knife to ChromaDB - with every management task at your fingertips! 


Whether you're a total beginner or veteran,

The aim is to lower the barrier to entry, and make learning, using, or developing with ChromaDB fast, easy, and, dare I say, even a little fun?



With over 15,000 Lines of code, this is one mighty App!

Here's a peek at what Chroma Flow Studio can do for you:

- **Dashboard Overview:**
  Get a clear, concise snapshot of your entire ChromaDB setup right from the dashboard.
  
- **Collections Page:**
  View all your collections, and perform essential actions like adding, copying, cloning, or deleting them – all with just a click. Plus, we've got handy templates for metadata and default settings to help you hit the ground running without the fuss.
  
- **Add Documents with Ease:**
  No need to manually assign IDs! Documents can be added with auto-generated IDs, plus customizable metadata templates to save you time.
  
- **Bulk Document Imports and Updates:**
  Need to add or update a lot of documents at once? No problem. Import documents in bulk with a simple JSON file, or update them in bulk too.
  
- **Document Management:**
  Whether you need to update a single document, copy one, or delete them (individually, in groups, or all at once), Chroma Flow Studio makes it easy to manage your documents at lightning speed.
  
- **Document Overview:**
  See all the important details of your documents – from IDs and contents to metadata and embeddings. Want to filter, edit, delete, or review your documents? It's all at your fingertips
  
- **Document Export:**
  You can easily export documents to JSON, select the content and records you want, and even choose where to send them. Simple as that!
  
- **Similarity Searches:**
  Run similarity searches - including the ability to filter for both documents and metadata. Precision searching has never been easier.
  
- **Quick Embedding Model Swaps:**
  Test out different embedding models and compare their performance in mere seconds – perfect for finding the best one for your use case.
  
- **Cloning and Re-Embedding:**
  Clone your data and re-embed it with a different model – a feature that ChromaDB's Python library doesn't even support natively, but I've added it here just for you!
  
- **Bulk Deletions**
  Another feature that ChromaDB's Python library doesn't support natively - Clear all documents from a Collection instantly in just a click!
  
- **Flask Server Configuration:**
  Easily configure the Flask server endpoint to suit your needs, with the flexibility to point to any ChromaDB SQLite file. Switching between them is as easy as flipping a switch.
  
- **Proxy Support:**
  Using a proxy? No problem! Chroma Flow Studio supports that too.
  
- **Built-in Tools:**
  UUIDs, Hashes, Timestamps, Embedding generation – all available on the fly. Need to generate synthetic data for testing? It's all ready to go. Plus, there's a handy token counter built right in.

- **Visualize your Data!:**
  Get a graphical representation of your collections by Visualizing your data points! (NOTE: requires chrome/firefox/edge to render, if you have issues, try other browsers)
  
- **Python Code Snippets:**
  At the bottom of the Collections / Documents / Update / Search Pages are Python code snippets showing how to perform those actions programatically. Just copy, paste, run, and done!
  
- **And More!**

Chroma Flow Studio brings everything you need in one place, wrapped in a simple UI,
with a range of tools built-in, detailed overviews, and embedded knowledge, everything is just a click away.

~~~~~~~~~~~~~~~
ChromaFlowStudio supports ChromaDB Versions 0.5.20+
And has been tested and is compatible with ChromaDB 0.6.1 too as of writing this 
(if later versions of chromadb introduce a breaking change, try downgrading)
~~~~~~~~~~~~~~~

So...

Enough talk

How do we get started? 

**Pre-Requisites:**
~~~~~~~~~~~~~~~~~~~~~~~~~
- ~300MB for the basic app, but ~1.7GB in Drive Space for all other libraries and dependancies (mainly torch)
- Python 3.10 (may also work in 3.11, but hasnt been tested)
- Pip 24.3.1
- VENV installed (optional, but HIGHLY, and STRONGLY recommended)
- ChromaDB 0.5.20+ to support hnsw config specified in metadata - tested and works on v0.6.1 too (latest as of writing this)
- Chroma-hnswlib==0.7.6+
- Set environment variable CHROMA_SERVER_CORS_ALLOW_ORIGINS=["*"]
- Check the requirements.txt for package version info
~~~~~~~~~~~~~~~~~~~~~~~~~


