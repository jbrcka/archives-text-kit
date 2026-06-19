# Archives Text Kit
Notre Dame's standard archival processing text expansions for use in ArchivesSpace via the Espanso text expander <br>
<i>Install Espanso from:</i> https://espanso.org/install/
## Notes: Conatent & Organization
- Expansions are organized into 3 groups:<br>
    - **Expansions by EAD Tag** (includes one file of expansions per tag);<br>
    - **Dates and Markup** (includes expansions for today's date in DACS and EDTF, expansions for foramtting wrapper tags for use inside and outside of ASpace, universal ASpace platform codes);<br>
    - **Expansions for Local Names and Codes** (record numbers for form genre subject terms, local names)<br>
- Notre Dame's custom values are present within files in the local_names_codes folder, and in variables.yml
- Variables are configured to encode institutional metadata for several repositories located within an academic library system, as well as a standard institutional records retention length in years
- Pressing alt + space on a PC or option + space on a Mac will retrieve a selectable list of all expansions installed on your local machine

## 🔄 Loading & Updating Your Text Kit Expansions (Mac)

Follow these steps to download or update the latest Archives-Text-Kit expansion shortcuts.

### 1. Setup (First Time Only)
* Download`update-text-kit-mac.sh` from (https://github.com/jbrcka/archives-text-kit/blob/main/update-text-kit.sh) and save it on your **Desktop**. 

### 2. Run the Update
1. Open the **Terminal** app (Press `Cmd + Space`, type `Terminal`, and press Enter).
2. Copy and paste the following command into the window, then press **Enter**:

```bash
bash ~/Desktop/update-text-kit-mac.sh
