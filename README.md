This is a fork of Chromaflows that will now function for Linux and Mac users. The original repo can be found at https://github.com/coffeecodeconverter/ChromaFlowStudio, please go there if you are looking for Windows supoport. <br>

Big thanks to coffeecodeconverter for Chroma Flow Studio , I hope to make some use of it now that it's running on my Ubuntu server. <br>


# ChromaFlowStudio
**Python GUI Client For ChromaDB**<br>
_Full Management and Visualisations_

![image](https://github.com/user-attachments/assets/61e12d9e-7d91-41e3-bb93-94158b2faa18)

![image](https://github.com/user-attachments/assets/b24f0fef-0834-4038-8a23-5a21e115089e)

![image](https://github.com/user-attachments/assets/0cd4a43e-5079-4232-8c3a-38271e553699)

Introducing Chroma Flow Studio.
<br>

The swiss-army knife to ChromaDB - with every management task at your fingertips! <br>
Promising to be **the most comprehensive ChromaDB GUI client available!**<br>

## Platform Support

Chroma Flow Studio supports multiple platforms:

- **Linux**: Fully supported with `.sh` scripts
- **macOS**: Fully supported with `.sh` scripts

## Quick Start (Linux/macOS)

2. **Make the setup script executable and run it**:
   ```bash
   chmod +x create_venv.sh
   ./create_venv.sh
   ```
   This will:
   - Create a Python virtual environment
   - Install all required dependencies
   - Set up the necessary directories in your home folder (`~/.chromaflow/`)


3. **Run the application**:
   ```bash
   ./run.sh
   ```
   The application will start and be available at: http://127.0.0.1:5000

## Remote Access

By default, Chroma Flow Studio is configured to allow remote access from other devices on your network. Here's how to access it:

1. **Find your server's IP address**:
   ```bash
   # On Linux/macOS
   hostname -I
   

2. **Access from another device**:
   - Open a web browser on any device connected to the same network
   - Navigate to: `http://<your-server-ip>:5000`
   - Replace `<your-server-ip>` with your server's IP address from step 1

3. **Firewall Configuration** (if needed):
   ```bash
   # For Linux with UFW
   sudo ufw allow 5000/tcp
   
   # For macOS
   sudo pfctl -E
   echo "pass in proto tcp from any to any port 5000" | sudo pfctl -f - 
   ```

4. **Security Note**:
   - The application is currently accessible to anyone on your network
   - For production use, consider:
     - Setting up a reverse proxy (like Nginx)
     - Enabling HTTPS
     - Implementing authentication

## Detailed Installation (Linux/macOS)

### Prerequisites
- Python 3.10 (recommended) or 3.11
- pip (Python package manager)
- git (for cloning the repository)


1. **Start the application**:
   ```bash
   ./run.sh
   ```

2. **Access the web interface**:
   Open your web browser and navigate to: http://127.0.0.1:5000

3. **Stopping the application**:
   Press `Ctrl+C` in the terminal where the application is running, or use:
   ```bash
   pkill -f "python app.py"
   ```

## File Locations

- **Configuration**: `appsettings.json` in the application directory
- **Database**: `~/.chromaflow/data/`
- **Models**: `~/.chromaflow/models/`
- **Logs**: `app.log` in the application directory

## Troubleshooting

- **Port already in use**: If port 5000 is in use, you can change it in `appsettings.json` by modifying the `flask_server_endpoint`
- **Model download issues**: Ensure you have a stable internet connection for the initial model download
- **Permission issues**: If you encounter permission errors, ensure the `~/.chromaflow` directory is writable by your user

## Development

To contribute to Chroma Flow Studio, follow these steps:

1. Fork the repository
2. Create a new branch for your feature
3. Make your changes
4. Submit a pull request


A **Pure Python** ChromaDB Client,<br>
Using Flask HTML and javascript for the Front End UI.<br>
Persists ChromaDB Data to disk by default<br>
<Br>


With over 15,000 Lines of code, this is one mighty App! <bR>
Here's a peek at what Chroma Flow Studio can do for you: <br>

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
including latest version (ChromaDB 0.6.1 as of writing this)
(if later versions of chromadb introduce a breaking change, try downgrading)
~~~~~~~~~~~~~~~
<Br>



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
<Br>
<br>
<br>


**Install Instructions: (EASY METHOD)**

EASY METHOD:
- Run the create_venv.sh script to configure the virtual environment and follow the instructions. <Br>
- When finished, run "./run.sh" to launch Chroma Flow Studio <Br>


**Getting Started with Chroma Flow Studio**<br>

**Creating Collections:** <Br>
On the collections page, creating a collection is simple and easy. <Br>
Collection names are autogenerated for convenience, as are the configuration fields and metadata—but you can still configure all of them. <Br>
There are options to copy a collection's details to a new empty collection, or clone an existing collection, including all its data. <Br>
Deleting collections one at a time or in bulk is just a single button click. <Br>
<br>
![image](https://github.com/user-attachments/assets/914df285-d343-450b-b4a7-3352260c139f)
<br>
![image](https://github.com/user-attachments/assets/a35fe74d-5e7e-4a5c-a120-a00c2d03e80d)
<br>
<br>

**Adding Documents:** <Br>
You can add documents one at a time, including setting metadata. <br>
There are quick buttons to set metadata templates with many useful attributes you could apply for a document. <br>
Or, import documents in bulk. <br>
You can also update documents individually or in bulk. <br>
<br>
![image](https://github.com/user-attachments/assets/606ef84e-74a7-4b75-a5d3-1c5299f14891)
<br>
![image](https://github.com/user-attachments/assets/d94ca657-776a-426f-97af-c6dd64564e02)
<br>
<br>

**Viewing Documents:** <Br>
On the view documents page:<br>
- select your collection,
- apply filters,
- choose how many results to return,
and quickly see your document IDs, contents, metadata, and embeddings.<br>
<br>

![image](https://github.com/user-attachments/assets/38a3ef9e-d2bd-4eaf-9da0-161d7e7b2b7b)

<br>
<br>

**Searching:** <br>
Similarity search is simple and easy to use. <bR>
Plus, there are filter options for specific document contents and/or metadata fields to create dynamic and specific queries. <br>
Quick buttons are provided to create your desired filters with speed, with full customization. <br>
<br>
![image](https://github.com/user-attachments/assets/87fb30df-f5da-4d84-af74-4d70b4fcbd8a)
<br>
![image](https://github.com/user-attachments/assets/91cb4b59-9662-432c-b05d-5e0d868f72a3)
<br>
![image](https://github.com/user-attachments/assets/4b875fcb-c544-4eec-84fb-d4ae0276043a)
<br>
![image](https://github.com/user-attachments/assets/cc5a8072-6743-4d28-a220-66607b6be45c)
<Br>
<br>

**Visualize Data:** <br>
The Visualize page gives you a graphical representation of your collections so you can see how similar groups of documents are to one another. <br>
It's also helpful to see how different embedding models generate different visuals on the same data, as a quicker way to see if they’re more accurate for your use case. <bR>
<Br>
![image](https://github.com/user-attachments/assets/5efb9c5b-9598-4558-ac4b-62792db290d1)
<br>
<br>

**Exporting Data:** <br>
The export page lets you pick documents, metadata, embeddings, or all of them to export into a JSON file. <br>
You can preview what data would be exported before committing to it <br>
And configure the filename and output directory. <br>
Simple. <br>
<br>
![image](https://github.com/user-attachments/assets/eae76b1f-5f18-4117-85b2-1ef1b9bf4b23)
<br>
![image](https://github.com/user-attachments/assets/f9822bfd-61bd-465d-bf7d-779a1b2f9570)
<Br>
![image](https://github.com/user-attachments/assets/bc40dad2-cc83-4db6-aa36-5e33241a37ea)
<br>
<Br>



**Embedded Python Snippets** <Br>
At the bottom of the Collections / Documents / Update / Search Pages<Br>
are Python code snippets showing how to perform those actions programatically.<Br>
Just copy, paste, run, and done!<br>
<br>
![image](https://github.com/user-attachments/assets/0a3255ac-e58c-42d2-bfeb-a554eaae7d94)
<br>
![image](https://github.com/user-attachments/assets/5f918b21-d1fd-400d-b1d3-6d8c7cc61583)
<bR>
![image](https://github.com/user-attachments/assets/d85927ad-f38f-41ea-88a2-e57a46ed1ace)
<br>
![image](https://github.com/user-attachments/assets/35549cd5-0c4d-4f44-bb7c-deb166b59f71)
<br>
<br>


**Configure Flask Server and ChromaDB Database File** <Br>
on the Settings page, you can change the port that Flask runs on if it conflicts with anything else you're running<br>
You can also configure the path the the ChromaDB file - if one doesnt exist, it creates a blank one automatically, but can be used to point to existing chroma.sqlite3 files.<br>
Also, if you're using a proxy, it can be set - leave field blank if proxy is not used.<br>
<br>
![image](https://github.com/user-attachments/assets/05125d3e-360c-423c-b0b1-1896abf3f574)
<br>
<br>
**Configure a prefix for collection names**<br>
Ability to set a prefix used in the Auto-name generation during the collection creation process.<br>
Theres also language setting, that if configured, and if you specify a "languague":"" json metadata key, it automatically uses this value<br>
<br>
![image](https://github.com/user-attachments/assets/f32d6872-1db4-490e-8435-f30495d43b48)
<br>
<br>

**Customize the Embedding Model**<Br>
Select from a range of embedding models (as the default one that chroma installs with isn't great)<br>
theres plenty to choose from, but you can also specify a custom one from hugging face (not all will work, its trial and error)<br>
<br>
![image](https://github.com/user-attachments/assets/e3d714dc-62fe-4f81-b85a-0f8937145c4e)
<br>
![image](https://github.com/user-attachments/assets/e9379811-9b3e-401b-bff1-9237e10c97c8)
<br>
<br>

**import data in bulk**<br>
upload a josn file to import 1000s x documents at once rapidly!<br>
<br>
![image](https://github.com/user-attachments/assets/1fbdfcd9-8570-40dd-81da-d2f109f435b2)
<br>
<br>
<br>
<br>
<br>

**Links to Other Chroma DB GUI Clients**<br>
heres a list of other GitHub projects for Chroma GUI clients:<br>
<br>

**ChromaDash** <Br>
https://github.com/coffeecodeconverter/ChromaDash <Br>
This is a HTTP Client UI, only works if you also have a HTTP ChromaDB Server running (default listens on 127.0.0.1:8000). <br>
Ignore, if you're interested in python clients. <br>
<br>

**Chroma UI** <br>
https://github.com/thakkaryash94/chroma-ui <br>
https://chroma-ui.vercel.app/ <br>
This is a HTTP Client UI, only works if you also have a HTTP ChromaDB Server running (default listens on 127.0.0.1:8000). <br>
Ignore, if you're interested in python clients. <br>
<br>

**Chroma Peek** <Br>
https://github.com/Pawandeep-prog/chroma-peek <br>
A Python client for quickly viewing documents in your collections. Can run basic queries for similarity search <br>
<br>

**Chromagraphic** <br>
https://github.com/msteele3/chromagraphic <BR>
A Python client for quickly viewing documents in your collections. Can add documents, but not search them. <Br>
<br>

**Vector Admin** <Br>
https://github.com/Mintplex-Labs/vector-admin <br>
This is a universal management tool that supports Chroma and pinecone databases, with the aim to support more in future. <bR>
Good UI that aims to simplify managing multiple vector databases through a unified interface. <br>
<br>

**Chroma DB Viewer** <br>
https://github.com/ill-yes/chromadb-viewer <br>
This application is a simple ChromaDB viewer developed with Streamlit and Python. It allows you to visualize and manipulate collections from ChromaDB. You can select collections, add, update, and delete items. <br>
<br>

**Chroma Viewer** <br>
https://github.com/avantrio/chroma-viewer <br>
A quick viewer for local Chrome DB <br>
<br>

**Chroma View Master** <br>
https://github.com/clearsitedesigns/chromaViewMaster <br>
ChromaView Master is a Streamlit-based tool designed to help you understand, visualize, and manipulate Chroma database collections. <br>
<br>

**ChromaDB Web UI** <br>
https://github.com/treeleaves30760/chromadb-WebUI <br>
This is a NodeJS Client with a Web UI Front End for viewing Chroma Collections. <br>
<br>

**ChromaDB UI** <br>
https://github.com/BlackyDrum/chromadb-ui <br>
This is a NodeJS Client with a Web UI Front End for viewing Chroma Collections. <br>
<br>

**ChromaDB UI** <br>
https://github.com/seancheong/chroma-ui <br>
This is a NodeJS Client with a Web UI Front End for viewing Chroma Collections. <br>
<br>

**ChromaDB UI** <br>
https://github.com/keval9098/chromadb-ui <br>
This is a Python Client with a Web UI Front End for viewing Chroma Collections. <br>
<br>

**ChromaDB RAG** <Br>
https://github.com/leporejoseph/streamlit_Rag <br>
RAG System using ChromaDB to drive it <br>
<br>
<br>
