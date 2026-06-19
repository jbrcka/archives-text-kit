# Archives Text Kit
Notre Dame's standard archival processing text kit. Facilitates production of ArchivesSpace metadata via the Espanso text expander. <br>

<i>Install Espanso from:</i> https://espanso.org/install/
## Notes: Content & Organization
- Expansions are organized into 3 foldered groups:<br>
    - **Expansions by EAD Tag:** includes one file of expansions per tag.<br>
    - **Dates and Markup:** includes expansions for today's date in DACS and EDTF, expansions for foramtting wrapper tags for use inside and outside of ASpace, universal ASpace platform codes (e.g., restriction type codes).
    - **Expansions for Local Names and Codes:** inludes expansions for record numbers for form genre subject terms for use with AO bulk loader, as well as expansions for standardized forms of frequently used local names.<br>
- Notre Dame's custom values are present within files in the local_names_codes folder, and in variables.yml
- Variables are configured to encode institutional metadata for several repositories located within an academic library system, as well as a standard institutional records retention length in years. Data in variables.yml supports the production of citation, separated materials notes, etc. See variables.yml comments for full list of dependencies.
- Pressing alt + space on a PC or option + space on a Mac will retrieve a selectable list of all expansions installed on your local machine.
- A set of updater scripts are included for Mac and PC to facilitate distribution of new and updated files. See below for instructions.

## 🔄 Loading & Updating Your Text Kit Expansions (Mac)

Follow these steps to download or update the latest Archives-Text-Kit expansion shortcuts.

### 1. Setup (First Time Only)
* Download`update-text-kit-mac.sh` from https://github.com/jbrcka/archives-text-kit/blob/main/update-text-kit.sh and save it on your **Desktop**. 

### 2. Run the Update
1. Open the **Terminal** app (Press `Cmd + Space`, type `Terminal`, and press Enter).
2. Copy and paste the following command into the window, then press **Enter**:

```bash
bash ~/Desktop/update-text-kit-mac.sh
