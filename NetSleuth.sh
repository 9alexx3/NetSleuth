#!/usr/bin/bash env

# Title........: NetSleuth.sh
# Description..: This is a multi-use bash script for Linux systems to change/repair/show networks configuration.
# Author.......: 9alexx3 aka variant
# Version......: 0.01 -> Alpha 1
# Usage........: sudo bash NetSleuth.sh
# Bash Version.: 4.2 or later

#SHELLCHECK

# FORMAT CHAT
    # COLORS
        # ESTABLECE EL COLOR POR DEFECTO.
        reset="\e[0m"
        #  COLORES NORMALES
        Negro="\e[30m" Rojo="\e[0;31m"   Verde="\e[32m" Amarillo="\e[33m"
        Azul="\e[34m"  Purpura="\e[35m"  Cian="\e[36m"  Blanco="\e[37m"
        #  CLARO
        CNegro="\e[1;30m"   CRojo="\e[1;31m"   CVerde="\e[1;32m" CAmarillo="\e[1;33m"
        CAzul="\e[1;34m"    CPurpura="\e[1;35m"  CCian="\e[1;36m"  CBlanco="\e[1;37m"
        #  NEGRITA
        NRojo="\e[2;31m"    NAmarillo="\e[2;33m"
        NBlanco="\e[2;37m"
        # SUBRAYADO CON COLOR
        # Simple
            #  Simple Normales
            S_Verde="\e[4;32m"      S_Purpura="\e[4;35m"
            CS_Azul="\e[1;4;34m"    CS_Purpura="\e[1;4;35m" CS_Cian="\e[1;4;36m"
            # Doble Clarito
            SSC_Rojo="\e[1;21;31m" SSC_Amarillo="\e[1;21;33m"


    punto="${reset}${NAmarillo}.${reset}"
    yes_no="${CCian}[${reset}${CVerde}Y${reset}${Blanco}/${reset}${Rojo}n${reset}${CCian}]${reset}"
    parentesis="${reset}${CNegro})${reset}"
    advertencia="${reset}${CNegro}[${reset}${CAmarillo}!${reset}${CNegro}]${reset}"

author="9alexx3"
script_name="NetSleuth"
version="v. Alpha"


function control_c(){
    echo -e "\n\n${NAmarillo}Saliendo...\n${reset}"
    tput cnorm
    exit 1
}
trap control_c INT

function banner(){
    clear
    tput civis

    echo -en "${Blanco}
    \t  __   __ 
    \t (  \,/  )   
    \t  \_ | _/\t\t\t${CBlanco}${script_name} (${version})${reset}${Blanco}
    \t  (_/ \_)
    \t\t\t\t\t    ${reset}${CPurpura}by ${author}${reset}


    \t              ${Cian}/\\
    \t vvvvvvvvvvvvvv \\\\${reset}${CCian}------------------------------------\\\\${reset}
    \t ${Cian}|${reset}                           ${CAmarillo}VA                       ${reset}${NRojo}}${reset} 
    \t ${Cian}^^^^^^^^^^^^^^ /${reset}${CCian}==============${Rojo}======${reset}${CRojo}===${reset}${NRojo}======${reset}${CRojo}===${reset}${NRojo}====/${reset}
    \t            ${Cian}  \/${reset}             ${CRojo}ººººººººº${reset}${NRojo}ººººº${reset}${CRojo}ºººº${reset}${NRojo}ººººº${reset}


    ${Blanco}
    \t\t\t\t\t\t\t\t  __   __ 
    \t\t\t\t\t\t\t\t (  \,/  )   
    \t\t\t${reset}${CVerde}\tLINUX SYSTEMS${reset}${Blanco}\t\t\t  \_ | _/
    \t\t\t\t\t\t\t\t  (_/ \_)
    \t${reset}
    "
    sleep 0.75s
    clear
    
    echo -en "${Blanco}
    \t\t\t\t    .-.
    \t\t\t\t.-.|  /
    \t\t\t\t \_|_/,\t\t${CBlanco}${script_name} (${version})${reset}${Blanco}
    \t\t\t\t / | \ 
    \t\t\t\t'-' ._\ \t     ${reset}${CPurpura}by ${author}${reset}


    \t\t              ${Cian}/\\
    \t\t vvvvvvvvvvvvvv \\\\${reset}${CCian}------------------------------------\\\\${reset}
    \t\t ${Cian}|${reset}                           ${CAmarillo}VARI                     ${reset}${NRojo}}${reset}
    \t\t ${Cian}^^^^^^^^^^^^^^ /${reset}${CCian}==============${Rojo}======${reset}${CRojo}===${reset}${NRojo}======${reset}${CRojo}===${reset}${NRojo}====/${reset}
    \t\t            ${Cian}  \/${reset}             ${CRojo}ººººººººº${reset}${NRojo}ººººº${reset}${CRojo}ºººº${reset}${NRojo}ººººº${reset}
    \t\t                                  ${CRojo}ºº${reset}${NRojo}ººº${reset}${CRojo}ººººººº${reset}${NRojo}ººººº${reset}${Blanco}

    \t\t\t\t  .-.
    \t\t\t\t  \  |.-.
    \t${reset}${CVerde}LINUX SYSTEMS${reset}${Blanco}\t\t  ,\_|_/
    \t\t\t\t   / | \\
    \t\t\t\t  /_. '-'${reset}\r\n 
    "

    sleep 0.75s
    clear
    echo -en "${Blanco}
    \t\t\t\t\t\t\t   .-.
    \t\t\t\t\t\t\t.-.|  /
    \t\t${CBlanco}${script_name} (${version})${reset}${Blanco}\t\t\t \_|_/,
    \t\t\t\t\t\t\t / | \ 
    \t\t\t${reset}${CPurpura}by ${author}${reset}${Blanco}\t\t\t'-' ._\ ${reset}


    \t\t\t              ${Cian}/\\
    \t\t\t vvvvvvvvvvvvvv \\\\${reset}${CCian}------------------------------------\\\\${reset}
    \t\t\t ${Cian}|${reset}                           ${CAmarillo}VARIANT                  ${reset}${NRojo}}${reset} 
    \t\t\t ${Cian}^^^^^^^^^^^^^^ /${reset}${CCian}==============${Rojo}======${reset}${CRojo}===${reset}${NRojo}======${reset}${CRojo}===${reset}${NRojo}====/${reset}
    \t\t\t            ${Cian}  \/${reset}             ${CRojo}ººººººººº${reset}${NRojo}ººººº${reset}${CRojo}ºººº${reset}${NRojo}ººººº${reset}
    \t\t\t                                  ${CRojo}ºº${reset}${NRojo}ººº${reset}${CRojo}ººººººº${reset}${NRojo}ººººº${reset}
    \t\t\t                                    ${NRojo}ººººº${reset}${CRojo}ººº${reset}${Blanco}
    \t     .-.
    \t     \  |.-.
    \t     ,\_|_/\t\t${reset}${CVerde}LINUX SYSTEMS${reset}${Blanco}
    \t      / | \\
    \t     /_. '-'${reset}\r\n 
    "

    sleep 1.25s
    clear
    tput cnorm

    # 80x20 resolución mínima
}

function autodetect_language(){
    # Autodetecta el idioma del sistema. Si da error, se pone en inglés británico.
    system_language="${LANG%%.*}" || "en_GB"
    # Revisa si el idioma sacado es compatible con el scrpit
    for lang in "${!langs[@]}";do
        language="${system_language%%_*}" # Se filtra el primer "_". Haciendo que se quede con el idioma principal y no con el dialecto (en → English (se borra GB o US))

        if [ "${language}" == "C" ] || [ "${language}" == "POSIX" ];then
            language="en"
            echo -e "\n${Blanco}${lang_success[${language}]}${reset}${Cian} ${system_language}${punto}"
            return 0
        fi

        if [ "${lang}" == "${language}" ];then
            if [ "skip" == "${1}" ];then
                return 0
            else
                echo -e "\n${Blanco}${lang_success[${language}]}${reset}${Cian} ${system_language}${punto}"
                return 0 # Si lo es, se finaliza la comprobación
            fi
            
        fi
    done

    display_select_language 0 # If there is an error and is not possible autodetect language, select language manually.
    
}

function display_select_language(){
    if [ "${1}" -eq 0 ];then
        errorLog 1
    fi

    echo -e "${S_Verde}${how_choose_lang[${language}]}${punto}\n"

    for index in $(printf '%s\n' "${!langs_translate[@]}" | sort -n);do
        key="${index%,*}"
        langu="${index#*,}"
        if [ "${langu}" = "${language}" ];then
           echo -e "${Rojo}${key}${parentesis} ${CVerde}${langs_translate[${index}]}${punto}"
        fi
    done
    echo -e "${Rojo}4${parentesis} ${CVerde}${exit[${language}]}${punto}\n"

    read -rp "·> " number_lang
    while true;do
        case "${number_lang}" in
            1) 
                language="en"
                system_language="en_GB"
                echo -e "\n${Blanco}${lang_success[${language}]}${reset}${Cian} ${system_language}${punto}"
                break
            ;;
            2) 
                language="es"
                system_language="es_ES"
                echo -e "\n${Blanco}${lang_success[${language}]}${reset}${Cian} ${system_language}${punto}"
                break
            ;;
            3) 
                language="ca"
                system_language="ca_CA"
                echo -e "\n${Blanco}${lang_success[${language}]}${reset}${Cian} ${system_language}${punto}"
                break
            ;;
            4) 
                echo -e "${NAmarillo}${exit[${language}]}${punto}"
                clear
                break
            ;;
            *) 
                errorLog 2 "4"
                read -rp "·> " number_lang
            ;;
        esac
    done
    enter_to_next
    clear
}

function help(){
    declare -A message_usage=(
        ["en"]="Usage: sudo bash $0 [ OPTIONS ]"
        ["es"]="Uso: sudo bash $0 [ OPCIONES ]"
        ["ca"]="Ús: sudo bash $0 [ OPCIONS ]"
    )
    declare -A message_info=(
        ["en"]="This script has been designed to simplify network configuration on Linux systems and assist with common network connectivity troubleshooting${punto}\n\nOPTIONS:"
        ["es"]="Este script ha sido diseñado para facilitar la configuración de red en sistemas Linux y ayudar a solventar problemas comunes relacionados en la conectividad de red${punto}\n\nOPCIONES:"
        ["ca"]="Aquest script ha sigut dissenyat per a facilitar la configuració de xarxa en sistemes Linux i ajudar a solucionar problemes comuns relacionats en la connectivitat de xarxa${punto}\n\nOPCIONS:"
    )
    declare -A message_options=(
        ["en"]="Hide the public IPv4 information in the category of '${translate_menu_one[${language}]}'"
        ["es"]="Oculta la información IPv4 pública en la categoría de '${translate_menu_one[${language}]}'"
        ["ca"]="Oculta la informació IPv4 pública  en la categoria de '${translate_menu_one[${language}]}'"
    )
    echo -e "${message_usage[${language}]}"
    echo -e "\n${message_info[${language}]}"
    echo -e "\n  -IP, --no-ip: ${message_options[${language}]}\n"
    echo "Github: https://github.com/${author}/${script_name}"
    echo "Discord: ${author} (aka variant)"
}

function errorLog(){
    local error="${Rojo}ERROR${reset}${CPurpura}.${reset}\a "
    local id

    case "${1}" in
        0) id="${no_minimum_resolution[${language}]}";;
        1) id="${lang_autodetect_fails[${language}]}";;
        2) id="${between[${language}]}";;
        3) id="${bash_version_fails[${language}]}";;
        4) id="${no_root[${language}]}" ;;
        5) id="${no_root_feature[${language}]}" ;;
        6) id="${tools_failed[${language}]}" ;;
        7) id="${no_interficies[${language}]}";;
        8) id="${no_lo_interficie[${language}]}";;
        9) id="${wrong_interficie[${language}]}";;
        10) id="${no_band_wifi[${language}]}";;
        11) id="${message_not_IPv4[${language}]}";;
        12) id="${message_IPv4_invalid[${language}]}";;
        13) id="${message_error_duplicate_IP[${language}]}" ;;
        14) id="${different_networks_gateway[${language}]}";;
        15) id="${message_up_no_DNS[${language}]}";;
        16) id="${message_no_hostDNS[${language}]}";;
        17) id="${message_cable_fails[${language}]}";;
        18) id="${message_wireless_fails[${language}]}";;
        19) id="${message_gateway_fails[${language}]}";;
        20) id="${message_tracert_fail[${language}]}";;
        21) id="${mesage_file_no_exists[${language}]}";;
        22) id="${mesage_nsswitch_no_hosts[${language}]}";;
        23) id="${mesage_nsswitch_no_files[${language}]}";;
        24) id="${mesage_nsswitch_no_dns[${language}]}";;
        25) id="${message_service_not_found[${language}]}";;
        26) id="${message_service_not_active[${language}]}";;
        27) id="${message_service_error[${language}]}";;
        28) id="${message_yesno[${language}]}";;
        29) id="${message_no_conn_networkmanager[${language}]}";;
        30) id="${message_incorrect_file[${language}]}";;
        31) id="${message_file_no_read_perms[${language}]}";;
        32) id="${message_IPv4_APIPA[${language}]}";;
        33) id="${message_encrypt_not_supported[${language}]}";;
        34) id="${message_wifi_disabled[${language}]}";;
        *) id="INTERNAL ERROR.";;
    esac

    # Reemplazar los marcadores de posición en el mensaje con los valores proporcionados
    id=$(printf "${id}" "${@:2}")

    echo -e "\n${error}${CAmarillo}${id}${punto}\n"
}

function format_message_translate(){
    id=$(printf "${1}" "${@:2}")
    echo -en "${id}"
}

function translations_handler(){

    declare -gA message_wifi_disabled=(
        ["en"]="Wi-Fi is disabled"
        ["es"]="El Wi-Fi está desactivado"
        ["ca"]="El Wi-Fi està desactivat"
    )

    declare -gA message_encrypt_not_supported=(
        ["en"]="Encryption not suported"
        ["es"]="Cifrado no soportado"
        ["ca"]="Xifratge no soportat"
    )

    declare -gA word_warning=(
        ["en"]="WARNING"
        ["es"]="ADVERTENCIA"
        ["ca"]="ADVERTIMENT"
    )
    declare -gA message_warning_security=(
        ["en"]="Running the feature %s can activate security systems such as IDS/IPS, firewall, SIEM/SOAR${punto}${CPurpura} Do you wish to continue?"
        ["es"]="La ejecución de la característica %s puede activar sistemas de seguridad tales como IDS/IPS, firewall, SIEM/SOAR${punto} ${CPurpura}¿Desea continuar?"
        ["ca"]="L'execució de la característica %s pot activar sistemes de seguretat com ara *IDS/IPS, firewall, SIEM/SOAR${punto}${CPurpura} Desitja continuar?"
    )

    declare -gA message_skip_function=(
        ["en"]="Skip the feature %s"
        ["es"]="Saltando la característica %s"
        ["ca"]="Saltant la característica %s "
    )

    declare -gA message_file_no_read_perms=(
        ["en"]="The file ${reset}${CCian}%s${reset}${CAmarillo} is not readable"
        ["es"]="El archivo ${reset}${CCian}%s${reset}${CAmarillo} no tiene permisos de lectura"
        ["ca"]="L'arxiu ${reset}${CCian}%s${reset}${CAmarillo} no té permisos de lectura"
    )

    declare -gA message_incorrect_file=(
        ["en"]="Incorrect format on line ${reset}${CS_Purpura}%s${reset}${CAmarillo} of the file ${reset}${CVerde}%s${punto}\n\t→ %s\n\n${CAmarillo}If you think this is incorrect, please, let them know via GitHub"
        ["es"]="Formato de archivo incorrecto en la línea ${reset}${CS_Purpura}%s${reset}${CAmarillo} del fichero ${reset}${CVerde}%s${punto}\n\t→ %s\n\n${CAmarillo}Si crees que esto es incorrecto, por favor, hazlo saber desde GitHub"
        ["ca"]="Format d'arxiu incorrecte en la línia ${reset}${CS_Purpura}%s${reset}${CAmarillo} de l fitxer ${reset}${CVerde}%s${punto}\n\t→ %s\n\n${CAmarillo}Si creus que això és incorrecte, per favor, fes-ho saber desde GitHub"
    )

    declare -gA message_yesno=(
        ["en"]="Enter ${reset}${CNegro}'${reset}${CCian}Y${reset}${CNegro}'${reset}${CAmarillo} to accept or ${reset}${CNegro}'${reset}${CCian}N${reset}${CNegro}'${reset}${CAmarillo} to deny."
        ["es"]="Ingresa ${reset}${CNegro}'${reset}${CCian}Y${reset}${CNegro}'${reset}${CAmarillo} para aceptar o ${reset}${CNegro}'${reset}${CCian}N${reset}${CNegro}'${reset}${CAmarillo} para negar"
        ["ca"]="Ingressa ${reset}${CNegro}'${reset}${CCian}Y${reset}${CNegro}'${reset}${CAmarillo} per a acceptar o ${reset}${CNegro}'${reset}${CCian}N${reset}${CNegro}'${reset}${CAmarillo} per a negar"
    )

    declare -gA message_type_change=(
        ["en"]="What type of exchange do you prefer"
        ["es"]="¿Qué tipo de cambio prefieres"
        ["ca"]="Quin tipus de canvi prefereixes"
    )

    declare -gA message_IPv4_check_success=(
        ["en"]="IPv4 address ${reset}${CNegro}(${reset}${Verde}%s${reset}${CNegro})${reset}${Blanco} is configured"
        ["es"]="La dirección IPv4 ${reset}${CNegro}(${reset}${Verde}%s${reset}${CNegro})${reset}${Blanco} está configurada"
        ["ca"]="La direcció IPv4 ${reset}${CNegro}(${reset}${Verde}%s${reset}${CNegro})${reset}${Blanco} està configurada"
    )

    declare -gA message_start_service=(
        ["en"]="start network service (%s)"
        ["es"]="arrancar el servicio de red (%s)"
        ["ca"]="prenjar el servici de xarxa (%s)"
    )
    declare -gA message_service_on=(
        ["en"]="The %s service has been successfully activated."
        ["es"]="El servicio de %s ha sido activado correctamente"
        ["ca"]="El servei de %s ha sigut activat correctament"
    )
    declare -gA message_service_error=(
        ["en"]="There is an error in %s service that prevents it from starting"
        ["es"]="Hay un error en el servicio %s que impide arrancarlo"
        ["ca"]="Hi ha un error en el servei %s que impedeix arrancar-lo"
    )
    declare -gA message_service_not_active=(
        ["en"]="The system doesn't have any active network services"
        ["es"]="El sistema no tiene ningún servicio de red activado"
        ["ca"]="El sistema no té cap servei de xarxa activat"
    )

    declare -gA message_service_found=(
        ["en"]="The system uses %s service"
        ["es"]="El sistema utiliza el servicio de %s"
        ["ca"]="El sistema utilitza el servici de %s"
    )

    declare -gA message_service_not_found=(
        ["en"]="No compatible network service was found for the script"
        ["es"]="No se encontró ningun servicio de red compatible con el script"
        ["ca"]="No s'ha encontrar cap servici de xarxa compatible amb el script"
    )

    declare -gA mesage_nsswitch_success=(
        ["en"]="Configuration verification for ${reset}${Verde}/etc/nsswitch.conf${reset}${Blanco} completed"
        ["es"]="Verificación de la configuración de ${reset}${Verde}/etc/nsswitch.conf${reset}${Blanco} completada"
        ["ca"]="Verificació de la configuració de ${reset}${Verde}/etc/nsswitch.conf${reset}${Blanco} completada"
    )

    declare -gA mesage_file_no_exists=(
        ["en"]="The file ${reset}${CCian}%s${reset}${CAmarillo} doesn't exist or is empty"
        ["es"]="El archivo ${reset}${CCian}%s${reset}${CAmarillo} no existe o está vacío"
        ["ca"]="El arxiu ${reset}${CCian}%s${reset}${CAmarillo} no existeix o està buit"
    )
    declare -gA mesage_nsswitch_no_hosts=(
        ["en"]="The options in ${reset}${CNegro}'${reset}${CCian}hosts${reset}${CNegro}'${reset}${CAmarillo} line is not configured in ${reset}${Verde}/etc/nsswitch.conf"
        ["es"]="Las opciones de ${reset}${CNegro}'${reset}${CCian}hosts${reset}${CNegro}'${reset}${CAmarillo} no está configurada en ${reset}${Verde}/etc/nsswitch.conf"
        ["ca"]="Les opcions de la línia ${reset}${CNegro}'${reset}${CCian}hosts${reset}${CNegro}'${reset}${CAmarillo} no està configurada en ${reset}${Verde}/etc/nsswitch.conf"
    )
    declare -gA mesage_nsswitch_no_files=(
        ["en"]="The ${reset}${CNegro}'${reset}${CCian}files${reset}${CNegro}'${reset}${CAmarillo} option is not configured in ${reset}${Verde}/etc/nsswitch.conf"
        ["es"]="La opción ${reset}${CNegro}'${reset}${CCian}files${reset}${CNegro}'${reset}${CAmarillo} no está configurada en ${reset}${Verde}/etc/nsswitch.conf"
        ["ca"]="La opció ${reset}${CNegro}'${reset}${CCian}files${reset}${CNegro}'${reset}${CAmarillo} no està configurada en ${reset}${Verde}/etc/nsswitch.conf"
    )
    declare -gA mesage_nsswitch_no_dns=(
        ["en"]="The ${reset}${CNegro}'${reset}${CCian}dns${reset}${CNegro}'${reset}${CAmarillo} option is not configured in ${reset}${Verde}/etc/nsswitch.conf"
        ["es"]="La opción ${reset}${CNegro}'${reset}${CCian}dns${reset}${CNegro}'${reset}${CAmarillo} no está configurada en ${reset}${Verde}/etc/nsswitch.conf"
        ["ca"]="La opció ${reset}${CNegro}'${reset}${CCian}dns${reset}${CNegro}'${reset}${CAmarillo} no està configurada en ${reset}${Verde}/etc/nsswitch.conf"
    )

    declare -gA message_tracert_success=(
        ["en"]="Your ISP works correctly"
        ["es"]="Tu ISP funciona"
        ["ca"]="Tu ISP funciona"
    )

    declare -gA message_POT=(
        ["en"]="[${reset}${CAmarillo}!${reset}${CNegro}]${reset}${CRojo} The following feature is in Pending of Testing [POT]. The effectiveness of the process is not guaranteed 100%"
        ["es"]="[${reset}${CAmarillo}!${reset}${CNegro}]${reset}${CRojo} La siguiente característica está en Pendiente De Prueba [POT en inglés]. No se garantiza al 100% la efectividad del proceso"
        ["ca"]="[${reset}${CAmarillo}!${reset}${CNegro}]${reset}${CRojo} La següent característica està en Arracada De Prova [POT en anglés]. No es garanteix al 100% l'efectivitat del procés"
    )

    declare -gA message_tracert_fail=(
        ["en"]="Aparently seems there is an issue with your ${reset}${Purpura}ISP${reset}${CAmarillo} or nearby networks that is preventing you from accessing the Internet"
        ["es"]="Al parecer hay un problema con tu ${reset}${Purpura}ISP${reset}${CAmarillo} o las redes cercanas a usted que impide salir a Internet"
        ["ca"]="Pel que sembla hi ha un problema amb el teu ${reset}${Purpura}ISP${reset}${CAmarillo} o les xarxes pròximes a vosté que impedeix eixir a Internet"
    )
    declare -gA message_tracert_problem=(
        ["en"]="← This IP address seems to be preventing access to the Internet"
        ["es"]="← Esta dirección IP parecer que está impidiendo el acceso a Internet"
        ["ca"]="← Aquesta adreça IP semblar que està impedint l'accés a Internet"
    )
    declare -gA message_tracert_H=(
        ["en"]="The previous hosts indicate the path thats packets follow to reach Internet"
        ["es"]="Los hosts anteriores indican la ruta que siguen los paquetes con destino a Internet"
        ["ca"]="Els hosts anteriors indiquen la ruta que segueixen els paquets amb destinació a Internet"
    )

    declare -gA message_gateway_success=(
        ["en"]="The gateway ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})${reset}${Blanco} works"
        ["es"]="La puerta de enlace ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})${reset}${Blanco} funciona"
        ["ca"]="La porta d'enllaç ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})${reset}${Blanco} funciona"
    )

    declare -gA message_gateway_fails=(
        ["en"]="There is no communication with the gateway ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})"
        ["es"]="No hay comunicación con la puerta de enlace ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})"
        ["ca"]="No hi ha comunicació amb la porta d'enllaç ${reset}${CNegro}(${reset}${Purpura}%s${reset}${CNegro})"
    )

    declare -gA different_networks_gateway=(
        ["en"]="The gateway address ${reset}${CNegro}(${reset}${CCian}%s${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo} and IPv4 address ${reset}${CNegro}(${reset}${CCian}%s${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo}are not in the same subnet"
        ["es"]="La puerta de enlace ${reset}${CNegro}(${reset}${CCian}%s${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo} y la dirección IPv4 ${reset}${CNegro}(${reset}${CCian}%s${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo} no están en la misma subred"
        ["ca"]="La porta d'enllaç ${reset}${CNegro}(${reset}${CCian}%s ${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo} i la direcció IPv4 ${reset}${CNegro}(${reset}${CCian}%s${reset}${CAmarillo}${reset}${CNegro})${reset}${CAmarillo} no estan en la mateixa subxarxa"
    )

    declare -gA message_wireless_fails=(
        ["en"]="AP device disconnected or with errors"
        ["es"]="Dispositivo AP desconectado o con errores"
        ["ca"]="Dispositiu AP desconnectat o amb errors"
    )

    declare -gA message_wireless_success=(
        ["en"]="AP device connected and operating correctly"
        ["es"]="Dispositivo AP conectado y operando correctamente"
        ["ca"]="Dispositiu AP connectat i operant correctament"
    )

    declare -gA message_cable_fails=(
        ["en"]="The cable is not properly connected or is broken"
        ["es"]="El cable no está conectado correctamente o está roto"
        ["ca"]="El cable no està connectat correctament o està trencat"
    )
    declare -gA message_cable_success=(
        ["en"]="The cable is properly connected and working correctly"
        ["es"]="El cable está colocado y funciona correctamente"
        ["ca"]="El cable està col·locat i funciona correctament"
    )

    declare -gA message_feature_duplicate_IP=(
        ["en"]="IPv4 address duplication detector"
        ["es"]="detector de direcciones IPv4 duplicadas"
        ["ca"]="detector de direccions IPv4 duplicades"
    )

    declare -gA message_this_device=(
        ["en"]="(This device)"
        ["es"]="(Este equipo)"
        ["ca"]="(Aquest dispositiu)"
    )

    declare -gA message_mac=(
        ["en"]="MAC Address"
        ["es"]="Dirección MAC"
        ["ca"]="Direcció MAC"
    )
    declare -gA message_ipv4=(
        ["en"]="IPv4 Address"
        ["es"]="Dirección IPv4"
        ["ca"]="Direcció IPv4"
    )
    
    declare -gA message_error_duplicate_IP=(
        ["en"]="An IP conflict has been detected ${reset}${CNegro}(${reset}${CRojo}%s hosts share the same IP${reset}${CNegro})${reset}"
        ["es"]="Se ha detectado un conflicto de IP ${reset}${CNegro}(${reset}${CRojo}%s hosts comparten la misma IP${reset}${CNegro})${reset}"
        ["ca"]="S'ha detectat un conflicte d'IP ${reset}${CNegro}(${reset}${CRojo}%s hosts comparteixen la mateixa IP${reset}${CNegro})${reset}"
    ) 

    declare -gA message_IPv4_invalid=(
        ["en"]="The IP ${reset}${CCian}%s${reset}${CAmarillo} is not valid"
        ["es"]="La IP ${reset}${CCian}%s${reset}${CAmarillo} no es válida"
        ["ca"]="La IP ${reset}${CCian}%s${reset}${CAmarillo} no és vàlida"
    )

    declare -gA message_IPv4_APIPA=(
        ["en"]="APIPA protocol is currently active"
        ["es"]="El protocolo ${reset}${CRojo}APIPA${reset}${CAmarillo} está actualmente activo"
        ["ca"]="El protocol ${reset}${CRojo}APIPA${reset}${CAmarillo} està actualment actiu"
    )
    # declare -gA message_IPv4_valid=(
    #     ["en"]="The IPv4 address ${reset}${CNegro}(${reset}${CCian}%s${reset}${reset}${CNegro})${reset}${CBlanco} is configured properly"
    #     ["es"]="La dirección IPv4 ${reset}${CNegro}(${reset}${CCian}%s${reset}${reset}${CNegro})${reset}${CBlanco} está configurada adecuadamente"
    #     ["ca"]="La direcció IPv4 ${reset}${CNegro}(${reset}${CCian}%s${reset}${reset}${CNegro})${reset}${CBlanco} està configurada adequadament"
    # )

    declare -gA message_seconds=(
        ["en"]="seconds"
        ["es"]="segundos"
        ["ca"]="segons"
    )
    declare -gA message_minutes=(
        ["en"]="minutes"
        ["es"]="minutos"
        ["ca"]="minuts"
    )
    declare -gA message_hours=(
        ["en"]="hours"
        ["es"]="horas"
        ["ca"]="hores"
    )
    declare -gA message_days=(
        ["en"]="days"
        ["es"]="días"
        ["ca"]="dies"
    )

    declare -gA message_dhcp_information=(
        ["en"]="DHCP INFORMATION"
        ["es"]="INFORMACIÓN DEL DHCP"
        ["ca"]="INFORMACIÓ DEL DHCP"
    )

    declare -gA message_server_dhcp_ip=(
        ["en"]="DHCP IP Address Server"
        ["es"]="Dirección IP del servidor DHCP"
        ["ca"]="Direcció IP del servidor DHCP"
    )

    declare -gA message_server_dhcp_mac=(
        ["en"]="MAC Address DHCP Server"
        ["es"]="Dirección MAC del servidor DHCP"
        ["ca"]="Direcció MAC del servidor DHCP"
    )

    declare -gA message_lease_time=(
        ["en"]="Lease Time"
        ["es"]="Tiempo de Concesión"
        ["ca"]="Temps de Concessió"
    )

    declare -gA message_rebind_time=(
        ["en"]="Reassignment Time"
        ["es"]="Tiempo de Reasignación"
        ["ca"]="Temps de Reassignació"
    )

    declare -gA message_renew_time=(
        ["en"]="Renewal Time"
        ["es"]="Tiempo de Renovación"
        ["ca"]="Temps de Renovació"
    )

    declare -gA message_expire_time=(
        ["en"]="Expiration Time"
        ["es"]="Tiempo de Expiración"
        ["ca"]="Temps d'Expiració"
    )

    declare -gA message_domain_name=(
        ["en"]="Domain Name"
        ["es"]="Nombre de Dominio"
        ["ca"]="Nom del Domini"
    )

    declare -gA no_interficies=(
        ["en"]="No network interface has been found in the system"
        ["es"]="No se ha encontrado ninguna interfaz de red en el sistema"
        ["ca"]="No s'ha trobat cap interfície de xarxa en el sistema"
    )

    declare -gA interficie_message_translate=(
        ["en"]="Interficie Name"
        ["es"]="Nombre de la interfaz"
        ["ca"]="Nom de la interfície"
    )

    declare -gA title_interficie_message=(
        ["en"]="SYSTEM INTERFACES"
        ["es"]="INTERFACES DEL SISTEMA"
        ["ca"]="INTERFÍCIES DEL SISTEMA" 
    )

 	declare -gA minimum_resolution=(
        ["en"]="Detected resolution:"
        ["es"]="Resolución detectada:"
        ["ca"]="Resolució detectada:"
    )

    declare -gA translate_menu_one=(
        ["en"]="Review the characteristics of the network"
        ["es"]="Revisar las características de la red"
        ["ca"]="Revisar les característiques de la xarxa"
    )
    
    declare -gA translate_menu_two=(
        ["en"]="Scan the network conf${punto}${CVerde} for errors"
        ["es"]="Escanear la conf${punto}${CVerde} de red en busca de fallos"
        ["ca"]="Escanejar la conf${punto}${CVerde} de xarxa a la recerca de fallades"
    )

    declare -gA translate_menu_three=(
        ["en"]="Modify ${reset}${CNegro}(${reset}${CS_Azul}and fix${parentesis}${CVerde} the network configuration"
        ["es"]="Modificar ${reset}${CNegro}(${reset}${CS_Azul}y reparar${parentesis}${CVerde} la conf${punto}${CVerde} de red"
        ["ca"]="Modificar ${reset}${CNegro}(${reset}${CS_Azul}i reparar${parentesis}${CVerde} la conf${punto}${CVerde} de la xarxa"
    )

    declare -gA translate_menu_four=(
        ["en"]="Re-choose the network interface"
        ["es"]="Re-elegir la interfaz de red"
        ["ca"]="Re-triar la interfície de xarxa"
    )      

    declare -gA translate_menu_five=(
        ["en"]="Changing the language"
        ["es"]="Cambiar el idioma"
        ["ca"]="Canviar l'idioma"
    )

    declare -gA exit=(
        ["en"]="Exit"
        ["es"]="Salir"
        ["ca"]="Eixir"
    )
    
    declare -gA no_minimum_resolution=(
        ["en"]="You do not have the minimum resolution to run the script"
        ["es"]="No dispones de la resolución mínima para ejecutar el script"
        ["ca"]="No dispones de la resolución mínima para ejecutar el script"
    )

 	declare -gA key_to_continue=(
        ["en"]="Press [Enter] key to continue..."
        ["es"]="Pulsa tecla la tecla [Enter] para continuar..."
        ["ca"]="Prem la tecla [Enter] per a continuar..."
    )
    
    declare -gA lang_autodetect_fails=(
        ["en"]="Your language is not supported or there is an error to autodetect it"
        ["es"]="Tu idioma no está soportado o hubo un error a la hora de autodetectarlo"
        ["ca"]="El teu idioma no està suportat o va haver-hi un error a l'hora d'autodetectar-lo"
    )

    declare -gA how_choose_lang=(
        ["en"]="Choose your language using the numbers"
        ["es"]="Selecciona tu idioma mediante los números"
        ["ca"]="Selecciona el teu idioma mitjançant els números"
    )

    declare -gA lang_success=(
        ["en"]="The language is set to"
        ["es"]="Se estableció el idioma a"
        ["ca"]="Es va establir l'idioma a"
    )
    
    declare -Ag langs_translate=(
        ["1,en"]="English"
        ["1,es"]="Inglés"
        ["1,ca"]="Anglés"
        ["2,en"]="Spanish"
        ["2,es"]="Español"
        ["2,ca"]="Espanyol"
        ["3,en"]="Catalan"
        ["3,es"]="Catalán"
        ["3,ca"]="Català"
    )

    declare -Ag langs=(
        ["en"]="English"
        ["es"]="Español"
        ["ca"]="Catalá"
    )

    declare -Ag between=(
        ["en"]="You must enter a number from ${reset}${CAzul}1${reset}${CAmarillo} to ${reset}${CAzul}%s"
        ["es"]="Tienes que ingresar un número del ${reset}${CAzul}1${reset}${CAmarillo} al ${reset}${CAzul}%s"
        ["ca"]="Has d'ingressar un número del ${reset}${CAzul}1${reset}${CAmarillo} al ${reset}${CAzul}%s"
    )

    declare -Ag bash_version_success=(
        ["en"]="Bash version ${reset}${CVerde}%s${reset}${Blanco} accepted. Minimum required: 4.2"
        ["es"]="Versión de bash ${reset}${CVerde}%s${reset}${Blanco} aceptada. Mínima requerida: 4.2 "
        ["ca"]="Versió de bash ${reset}${CVerde}%s${reset}${Blanco} acceptada. Mínima requerida: 4.2"
    )

    declare -Ag bash_version_fails=(
        ["en"]="Bash version %s NOT accepted. Minimum required: 4.2"
        ["es"]="Versión de bash %s denegada. Mínima requerida: 4.2"
        ["ca"]="Versió de bash %s denegat. Mínima requerida: 4.2"
    )

    declare -gA current_distro=(
        ["en"]="The current distribution is"
        ["es"]="La distribución actual es"
        ["ca"]="La distribució actual és"
    )

    declare -gA distros_no_testing=(
        ["en"]="The current distribution (%s) has not been tested, may contain bugs, and is not recommended for use in productions environments"
        ["es"]="La distribución actual (%s) no ha sido probada, es posible que haya errores y no es recomendable usar en entornos de producción"
        ["ca"]="La distribució actual (%s) no ha sigut testat, és possible que hi haja errors i no és recomanable usar en entorns de produccións"
    )

    declare -gA no_root=(
        ["en"]="You do not have sufficient permissions. Execute the script as root (sudo)"
        ["es"]="No dispones de los permisos suficientes para realizar esta acción. Ejecuta el script como root (sudo)"
        ["ca"]="No disposes dels permisos suficients per a realitzar aquesta acció. Executa el script com root (sudo)"
    )

    declare -gA no_root_feature=(
        ["en"]="You do not have sufficient permissions to execute ${reset}${CCian}'%s'${reset}${CAmarillo} feature${reset}"
        ["es"]="No dispones de los permisos suficientes para ejecutar la característica ${reset}${CCian}'%s'${reset}"
        ["ca"]="No disposes dels permisos suficients per a executar la característica ${reset}${CCian}'%s'${reset}"
    )


    declare -gA fail_tool=(
        ["en"]="FAIL"
        ["es"]="FALLO"
        ["ca"]="FALLADA"
    )

    declare -gA tools_ok=(
        ["en"]="${CCian}¡${reset}${Amarillo}Perfect${punto}${Amarillo} You have all the tools installed${reset}${CCian}!${reset}"
        ["es"]="${CCian}¡${reset}${Amarillo}Perfecto${punto}${Amarillo} Tienes todas las herramientas instaladas${reset}${CCian}!${reset}"  
        ["ca"]="${CCian}¡${reset}${Amarillo}Perfecte${punto}${Amarillo} Tens totes les eines instal·lades${reset}${CCian}!${reset}"
    )

    declare -gA tools_failed=(
        ["en"]="The required tools for the script to function properly are missing"
        ["es"]="Te faltan las herramientas necesarias para el funcionamiento del script"
        ["ca"]="Et falten les eines necessàries per al funcionament del script"
    )

    declare -gA unknown_message=(
        ["en"]="Unknown"
        ["es"]="Desconocido"
        ["ca"]="Desconegut"
    )

    declare -gA translate_want_choose=(
        ["en"]="What do you choose"
        ["es"]="¿Qué escoges"
        ["ca"]="Què tries"
    )
   
    declare -gA no_interficies=(
        ["en"]="No network interfaces have been found in the system"
        ["es"]="No se han encontrado interfaces de red en el sistema"
        ["ca"]="No s'han trobat interfícies de xarxa en el sistema"
    )

    declare -gA no_lo_interficie=(
        ["en"]="The interface ${reset}${Azul}lo${reset}${CAmarillo} is not valid${punto}${CAmarillo} Try another"
        ["es"]="La interfaz ${reset}${Azul}lo${reset}${CAmarillo} no es válida${punto}${CAmarillo} Pruebe otra"
        ["ca"]="La interfície ${reset}${Azul}lo${reset}${CAmarillo} no és vàlida${punto}${CAmarillo} Prove altra"
    )

    declare -gA wrong_interficie=(
        ["en"]="The interface has not been found${reset}${Negro} (${Azul}%s${reset}${Negro})${reset}${CAmarillo} in the system"
        ["es"]="No se ha encontrado la interfaz${reset}${Negro} (${Azul}%s${reset}${Negro})${reset}${CAmarillo} en el sistema"
        ["ca"]="No s'ha trobat la interfície${reset}${Negro} (${Azul}%s${reset}${Negro})${reset}${CAmarillo} en el sistema"
    )

    declare -gA no_band_wifi=(
        ["en"]="Unable to identify Wi-Fi antenna frequency (support only ${reset}${CCian}2.4 GHz. & 5 GHz.${reset}${CAmarillo})"
        ["es"]="No se ha podido identificar la frecuencia de la antena Wi-Fi (solo soporto ${reset}${CCian}2.4 GHz. & 5 GHz.${reset}${CAmarillo})"
        ["ca"]="No s'ha pogut identificar la freqüència de l'antena Wi-Fi (només suporte ${reset}${CCian}2.4 GHz. & 5 GHz.${reset}${CAmarillo})"
    )

    declare -gA title_info_network_properties=(
        ["es"]="Las características de ${reset}${NBlanco}%s${reset}${Blanco} son"
        ["en"]="The properties of ${reset}${NBlanco}%s${reset}${Blanco} are"
        ["ca"]="Les característiques de ${reset}${NBlanco}%s${reset}${Blanco} són"
    )

    declare -gA exit_script=(
        ["en"]="Exiting the script..."
        ["es"]="Saliendo del script..."
        ["ca"]="Eixint del script..."
    )

    declare -gA check_ethernet_wifi=(
        ["en"]="[Auto-Detection]${reset}${Blanco} The selected interface ${reset}${Negro}(${reset}${Azul}%s${reset}${Negro})${reset}${Blanco}${reset}${Blanco} is${reset} ${CVerde}%s"
        ["es"]="[Autodetección]${reset}${Blanco} La interfaz seleccionada ${reset}${Negro}(${reset}${Azul}%s${reset}${Negro})${reset}${Blanco}${reset}${Blanco} es${reset} ${CVerde}%s"
        ["ca"]="[Autodetecció]${reset}${Blanco} La interfície seleccionada ${reset}${Negro}(${reset}${Azul}%s${reset}${Negro})${reset}${Blanco}${reset}${Blanco} és${reset} ${CVerde}%s"
    )

    declare -gA class_netmask=(
        ["en"]="Netmask Class"
        ["es"]="Clase de máscara"
        ["ca"]="Classe màscara"
    )

    declare -gA gateway_message=(
        ["en"]="The default gateway is"
        ["es"]="La puerta de enlace predeterminada es"
        ["ca"]="La porta d'enllaç predeterminada és"
    )

    declare -gA message_interficie_dhcp=(
        ["en"]="The connection is: ${CCian}dynamic"
        ["es"]="La conexión es: ${CCian}automática"
        ["ca"]="La connexió és: ${CCian}automàtica"
    )
    declare -gA message_interficie_static=(
        ["en"]="The connection is: ${CCian}static"
        ["es"]="La conexión es: ${CCian}estática"
        ["ca"]="La connexió és: ${CCian}estàtica"
    )

    declare -gA message_public_ip=(
        ["en"]="Your public IP address is: "
        ["es"]="Tu dirección IP Pública es: "
        ["ca"]="La teua adreça IP Pública és: "
    )
    declare -gA message_SSID=(
        ["en"]="Network Name"
        ["es"]="Nombre de la red"
        ["ca"]="Nom de la xarxa"
    )
    declare -gA message_AP=(
        ["en"]="Access Point MAC"
        ["es"]="La MAC del AP es"
        ["ca"]="La MAC de l'AP és"
    )
    declare -gA message_channel=(
        ["en"]="The network channel is"
        ["es"]="El canal de la red es"
        ["ca"]="El canal de la xarxa és"
    )
    declare -gA message_freq=(
        ["en"]="The network frequency is"
        ["es"]="La frecuencia está a"
        ["ca"]="La freqüència és de"
    )
    declare -gA message_link_speed=(
        ["en"]="The transfer rate reaches"
        ["es"]="La tasa de transferencia alcanza"
        ["ca"]="La taxa de transferència aconsegueix"
    ) 
    declare -gA message_monitor_off=(
        ["es"]="El modo ${reset}${CAmarillo}monitor${reset} ${SSC_Rojo}no${reset}${Blanco} está ${reset}${SSC_Rojo}activa"
        ["en"]="Monitor mode is ${reset}${SSC_Rojo}not enabled"
        ["ca"]="El mode ${reset}${CAmarillo}monitor${reset} ${SSC_Rojo}no${reset}${Blanco} está ${reset}${SSC_Rojo}activat"
    )
    declare -gA message_monitor_on=(
        ["es"]="El modo ${reset}${CAmarillo}monitor${reset}${Blanco} está ${reset}${SSC_Rojo}activat"
        ["en"]="Monitor mode is ${reset}${SSC_Rojo}enabled"
        ["ca"]="El mode ${reset}${CAmarillo}monitor${reset}${Blanco} está ${reset}${SSC_Rojo}activat"
    )
    declare -gA message_promiscue_on=(
        ["es"]="El modo ${reset}${CAmarillo}promiscuo${reset}${Blanco} está ${reset}${SSC_Rojo}activado"
        ["en"]="Promiscuous mode is ${reset}${SSC_Rojo}enabled"
        ["ca"]="El mode ${reset}${CAmarillo}promiscu${reset}${Blanco} està ${reset}${SSC_Rojo}activat"
    )
    declare -gA message_promiscue_off=(
        ["es"]="El modo ${reset}${CAmarillo}promiscuo${reset} ${SSC_Rojo}no${reset}${Blanco} está ${reset}${SSC_Rojo}activado"
        ["en"]="Promiscuous mode is ${reset}${SSC_Rojo}not enabled"
        ["ca"]="El mode ${reset}${CAmarillo}promiscu${reset} ${SSC_Rojo}no${reset}${Blanco} està ${reset}${SSC_Rojo}activat"
    )
    declare -gA message_no_password=(
        ["en"]="There is no password on the wireless network"
        ["es"]="No hay contraseña en la red inalámbrica"
        ["ca"]="No hi ha contrasenya en la xarxa sense fil"
    )
    declare -gA message_password=(
        ["en"]="The encryption used is ${reset}${Verde}%s${reset}${Blanco} and the password set to ${reset}${CNegro}'${reset}${NRojo}%s${reset}${CNegro}'"
        ["es"]="El cifrado utilizado es ${reset}${Verde}%s${reset}${Blanco} y la contraseña establecida ${reset}${CNegro}'${reset}${NRojo}%s${reset}${CNegro}'"
        ["ca"]="El xifratge utilitzat és ${reset}${Verde}%s${reset}${Blanco} i la contrasenya establida ${reset}${CNegro}'${reset}${NRojo}%s${reset}${CNegro}'"
    )
    declare -gA no_perms_passwd=(
        ["en"]="show password Wi-Fi"
        ["es"]="Mostrar contraseña del Wi-Fi"
        ["ca"]="Visualitzar la contrasenya de la xarxa sense fills"
    )

    declare -gA message_signal_info=(
        ["en"]="The signal is ${reset}${CS_Cian}%s${reset} ${Blanco}dB${punto}"
        ["es"]="La señal es de ${reset}${CS_Cian}%s${reset} ${Blanco}dB${punto}"
        ["ca"]="El senyal és de ${reset}${CS_Cian}%s${reset} ${Blanc}dB${punt}"
    )
    declare -gA message_signal_type_1=(
        ["en"]="Excellent"
        ["es"]="Excelente"
        ["ca"]="Excel·lent"
    )
    declare -gA message_signal_type_2=(
        ["en"]="Good"
        ["es"]="Buena"
        ["ca"]="Bona"
    )
    declare -gA message_signal_type_3=(
        ["en"]="Regular"
        ["es"]="Regular"
        ["ca"]="Regular"
    )
    declare -gA message_signal_type_4=(
        ["en"]="Bad"
        ["es"]="Mala"
        ["ca"]="Dolenta"
    )
    declare -gA message_signal_type_5=(
        ["en"]="Poor"
        ["es"]="Pésima"
        ["ca"]="Pèssima"
    )

    declare -gA message_on=(
        ["en"]="On"
        ["es"]="Activado"
        ["ca"]="Activat"
    )
    declare -gA message_off=(
        ["en"]="Off"
        ["es"]="Desconectado"
        ["ca"]="Desactivat"
    )
    declare -gA message_velocity=(
        ["en"]="The interface is configured to"
        ["es"]="La interfaz está configurada a"
        ["ca"]="La interfície està configurada"
    )
    declare -gA message_link=(
        ["en"]="Supported links"
        ["es"]="Enlaces Soportados"
        ["ca"]="Enllaços Suportats"
    )

    declare -gA message_not_IPv4=(
        ["en"]="There is no configured IPv4 address"
        ["es"]="No hay una dirección IPv4 configurada"
        ["ca"]="No hi ha una direcció IPv4 configurada"
    )

    declare -gA message_no_hostDNS=(
        ["en"]="The host ${reset}${CCian}%s${reset}${CAmarillo} could not be reached"
        ["es"]="No se pudo acceder al host ${reset}${CCian}%s${reset}"
        ["ca"]="No es va poder accedir al host ${reset}${CCian}%s${reset}"
    )

    declare -gA message_up_no_DNS=(
        ["en"]="The host ${reset}${CCian}%s${reset}${CAmarillo} is up, but not responding to name resolution queries"
        ["es"]="El host ${reset}${CCian}%s${reset}${CAmarillo} está activo, pero no responde a las consultas de resolución de nombres"
        ["ca"]="El host ${reset}${CCian}%s${reset}${CAmarillo} està actiu, però no respon a les consultes de resolució de noms"
    )

    declare -gA message_DNS_success=(
        ["en"]="The host ${reset}${Purpura}%s${reset}${Blanco} is successfully responding to name resolution queries"
        ["es"]="El host ${reset}${Purpura}%s${reset}${Blanco} está respondiendo correctamente a las peticiones de resolución de nombres"
        ["ca"]="El host ${reset}${Purpura}%s${reset}${Blanco} està responent correctament a les peticions de resolució de noms"
    )

    declare -gA message_compatible_serv=(
        ["en"]="Both the system and the script are compatible with the following services:"
        ["es"]="Tanto el sistema como el script son compatibles con los siguientes servicios:"
        ["ca"]="Tant el sistema com el script són compatibles amb els següents serveis:"
    )

    declare -gA message_input_IPv4=(
        ["en"]="Enter the IPv4 address that will be used as %s"
        ["es"]="Introduzca la dirección IPv4 que será usada como %s"
        ["ca"]="Introduïsca la direcció IPv4 que serà usada com %s"
    )
    declare -gA message_stop_skip=(
        ["en"]="If you want to skip this step, type"
        ["es"]="Si deseas saltarte este paso, escribe"
        ["ca"]="Si desitges saltar-te aquest pas, escriu"
    )

    declare -gA message_new_cidr=(
        ["en"]="Teclege el número corresponent al CIDR de la teua nova màscara de xarxa (per defecte és 24)"
        ["es"]="Teclee el número correspondiente al CIDR de tu nueva máscara de red (por defecto es 24)"
        ["ca"]="Enter the number corresponding to the CIDR of your new network mask (default is 24)"
    )

    declare -gA message_no_conn_networkmanager=(
        ["en"]="There are no NetworkManager connections; one will be forced to be created"
        ["es"]="No hay conexiones de NetworkManager, se forzará a crear uno"
        ["ca"]="No hi ha connexions de NetworkManager, es forçarà a crear un"
    )

    declare -gA message_type_method=(
        ["en"]="Which method do you want to use"
        ["es"]="¿Qué método quieres usar"
        ["ca"]="Quin mètode vols usar"
    )

    declare -gA message_GUI_networkmanager=(
        ["en"]="Do you want to open NetworkManager GUI"
        ["es"]="¿Quieres abrir la GUI de NetworkManager"
        ["ca"]="Vols obrir la GUI de NetworkManager"
    )

    declare -gA message_search_wifi=(
        ["en"]="Searching for Wi-Fi networks... This may take a moment"
        ["es"]="Buscando redes Wi-Fi... Esto puede tardar un poco"
        ["ca"]="Buscant xarxes Wi-Fi... Això pot tardar una mica"
    )

    declare -gA message_type_password=(
        ["en"]="Enter the password for the network ${reset}${CVerde}%s${reset}${Blanco} with BSSID ${reset}${CRojo}'%s'${punto}\n${Blanco}Password will not be displayed while typing"
        ["es"]="Introduzca la contraseña de la red ${reset}${CVerde}%s${reset}${Blanco} cuya BSSID es ${reset}${CRojo}'%s'${punto}${punto}\n${Blanco}La contraseña no se mostrará mientras se escribe"
        ["ca"]="Introduïsca la contrasenya de la xarxa ${reset}${CVerde}%s${reset}${Blanco} que la seua BSSID és ${reset}${CRojo}'%s'${punto}${punto}\n${Blanco}La contrasenya no es mostrarà mentre s'escriu"
    )
}
translations_handler
if [ "${1^^}" == "--HELP" ] || [ $# -gt 1 ];then
    autodetect_language "skip"
    help
    exit 0
fi

function check_necessary_name(){
    # FUNCIÓN NO TERMINADA
    local check_necessary_tools=("iw" "awk" "ip" "sed" "nslookup" "arping" "ethtool" "iwconfig" "lspci" "ping" "rar")
    failed=()
    declare -A neccesary_tools=(
        ["en"]="Checking that you have the necessary tools..."
        ["es"]="Comprobando que tienes las herramientas necesarias..."
        ["ca"]="Comprovant que tens les eines necessàries..."
    )
    echo -e "${Amarillo}${neccesary_tools[${language}]}${reset}\n"

    for tool in "${check_necessary_tools[@]}";do
        if command -v "${tool}" >/dev/null 2>&1;then
            sleep 0.24
            echo -e "${CPurpura}[${reset} OK ${CPurpura}] ${reset}${Blanco}${tool}${reset}"
            sleep 0.24
        else
            failed+=("${tool}")
            sleep 0.24
            echo -e "${Purpura}[${reset} ${Rojo}${fail_tool[${language}]} ${Purpura}]${reset} ${Blanco}${tool}${reset}"
            sleep 0.24
        fi
    done

    if [ "${#failed[@]}" -eq 0 ];then
        format_message_translate "${tools_ok[${language}]}"
        unset failed
        return 0
    else
        errorLog 6
        # install_dependencies
        return 1
    fi

}


function install_dependencies(){
    #arping is provided by package iputils-arping on Debian.
    #iproute2 para el comando ip y el paquete ethtool para el comando ethtool). 
    # To install ethtool on CentOS, Fedora, AlmaLinux, and Red Hat:

    # $ sudo dnf install ethtool
    #To install ethtool on Arch Linux and Manjaro:

    #$ sudo pacman -S ethtool

    # FUNCIÓN NO TERMINADA

    declare -A install_dependencies=(
        ["rar"]="rar"
        ["nombre_herramienta"]="paquete herramienta"
    )

    check_root_permissions "apt"

    if [ "${distro}" == "Parrot" ] || [ "${distro}" == "Ubuntu" ];then
        if sudo apt update >/dev/null 2>&1;then
            echo -e "Se ha actualizado los repositorios"
        else
            echo -e "Fallo al actualizar los repositorios. Se usarán los actuales (algunas herramientas podrían no estar a la última versión)."
        fi

        for tool in "${failed[@]}";do
            echo -e "${install_dependencies[${tool}]}"
            if sudo apt install -y "${install_dependencies[${tool}]}" >/dev/null 2>&1;then
                echo -e "La herramienta ${tool} se ha instalado correctamente"
            fi
        done
    fi 
     
}

function check_root_permissions(){
    local command="${1}"
    local feature="${2}"
    local path
    path=$(command -v "${command}")

    if sudo -n true >/dev/null 2>&1;then
        if sudo -n -l "${path}" >/dev/null 2>&1;then
            return 0
        else
            errorLog 5 "${feature}"
            return 1
        fi
    else
        errorLog 5 "${feature}"
        return 1
    fi

}

function check_distros(){

    # FUNCIÓN NO TERMINADA

    declare distros=("Kali" "Ubuntu" "Parrot")
    
    # if [ "${OSTYPE}" != "linux-gnu" ];then
    #     echo -e "${distros_no_testing[${language}]}"
    #     return 0
    # fi

    for i in "${distros[@]}";do
        if uname -a | grep -i "${i}" > /dev/null;then
            distro="${i}"
            echo -e "${Blanco}${current_distro[${language}]} ${reset}${CPurpura}${distro}${punto}"
            return 0
        fi
    done

    echo -e "${advertencia} ${CRojo}$(format_message_translate "${distros_no_testing[${language}]}" "${distro}")${punto}"
}


function detect_screen_resolution(){

    if command -v stty size >/dev/null;then
        if resolution=$(stty size);then
            resolution_detected=1
        fi
    fi

    if [ "${resolution_detected}" -eq 0 ];then
        resolution="80 24"
    fi

    # Obtener las dimensiones de la resolución
    resolution_y=$(echo "${resolution}" | cut -d " " -f2)
    resolution_x=$(echo "${resolution}" | cut -d " " -f1)

    # Verificar si la resolución es menor que 80x24
    if [ "${resolution_y}" -lt 80 ] || [ "${resolution_x}" -lt 24 ];then 
        autodetect_language "skip" 
        errorLog 0
        exit 1
    else
        banner
        autodetect_language
        echo -e "\n${Blanco}${minimum_resolution[${language}]}${reset}${CAzul} ${resolution_y}x${resolution_x}${reset}"
    fi
}

function enter_to_next(){
    tput civis
    echo -e ""
    read -rp "${key_to_continue[${language}]}" -s 
    tput cnorm
    clear
}

function bash_version(){
    if command -v bash --version >/dev/null 2>&1;then
        local versionbash
        versionbash=$(bash --version | head -n 1 | cut -d ' ' -f4) || "4.2"
        local bashversion="${BASH_VERSINFO[0]}.${BASH_VERSINFO[1]}"
        local min_bash_version="4.2"
        if awk -v n1="${bashversion}" -v n2="${min_bash_version}" 'BEGIN{if (n1>=n2) exit 0; exit 1}';then
            echo -e "\n${Blanco}$(format_message_translate "${bash_version_success[${language}]}" "${versionbash}") ${reset}\n"
        else
            errorLog 3 "${versionbash}"
            exit 2
        fi
    fi

}

function set_chipset(){

    # FUNCTION COPIED BY AIRGEDDON
    # https://github.com/v1s1t0r1sh3r3/airgeddon

	chipset=""
	local sedrule1="s/^[0-9a-f]\{1,4\} \|^ //Ig"
	local sedrule2="s/ Network Connection.*//Ig"
	local sedrule3="s/ Wireless.*//Ig"
	local sedrule4="s/ PCI Express.*//Ig"
	local sedrule5="s/ \(Gigabit\|Fast\) Ethernet.*//Ig"
	local sedrule6="s/ \[.*//"
	local sedrule7="s/ (.*//"
	local sedrule8="s|802\.11a/b/g/n/ac.*||Ig"
	local sedruleall="${sedrule1};${sedrule2};${sedrule3};${sedrule4};${sedrule5};${sedrule6};${sedrule7};${sedrule8}"

	if [ -f "/sys/class/net/${1}/device/modalias" ];then
        local bus_type
		bus_type=$(cut -f 1 -d ":" < "/sys/class/net/${1}/device/modalias")

		if [ "${bus_type}" == "usb" ];then
            local vendor_and_device
			vendor_and_device=$(cut -b 6-14 < "/sys/class/net/${1}/device/modalias" | sed 's/^.//;s/p/:/')
			if command -v lsusb >/dev/null 2>&1;then
				if [[ -n "${2}" ]] && [[ "${2}" = "read_only" ]];then
					chipset=$(lsusb | grep -i "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
				else
					chipset=$(lsusb | grep -i "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
				fi
			fi

		elif [[ "${bus_type}" =~ pci|ssb|bcma|pcmcia ]];then
			if [[ -f "/sys/class/net/${1}/device/vendor" ]] && [[ -f "/sys/class/net/${1}/device/device" ]];then
        local vendor_and_device
		vendor_and_device=$(sed -e 's/0x//' "/sys/class/net/${1}/device/vendor"):$(sed -e 's/0x//' "/sys/class/net/${1}/device/device")
				if [[ -n "${2}" ]] && [[ "${2}" = "read_only" ]];then
					chipset=$(lspci -d "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
				else
					chipset=$(lspci -d "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
				fi
			else
				if command -v ethtool >/dev/null 2>&1;then
                    local ethtool_output
                    local vendor_and_device
					ethtool_output=$(ethtool -i "${1}" 2>&1)
					vendor_and_device=$(printf "%s" "${ethtool_output}" | grep "bus-info" | cut -f 3 -d ":" | sed 's/^ //')
					if [[ -n "${2}" ]] && [[ "${2}" = "read_only" ]];then
						chipset=$(lspci | grep "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
					else
						chipset=$(lspci | grep "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
					fi
				fi
			fi
		fi
	elif [[ -f "/sys/class/net/${1}/device/idVendor" ]] && [[ -f "/sys/class/net/${1}/device/idProduct" ]];then
        local vendor_and_device
		vendor_and_device=$(cat "/sys/class/net/${1}/device/idVendor"):$(cat "/sys/class/net/${1}/device/idProduct")
		if command -v lsusb >/dev/null 2>&1;then
			if [[ -n "${2}" ]] && [[ "${2}" = "read_only" ]];then
				chipset=$(lsusb | grep -i "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
			else
				chipset=$(lsusb | grep -i "${vendor_and_device}" | head -n 1 | cut -f 3 -d ":" | sed -e "${sedruleall}")
			fi
		fi
	fi
}

function display_interfaces(){
    local interfaces=()
    if [ -d "/sys/class/net/" ];then
        interfaces=(/sys/class/net/*)
    fi

    if [ "${#interfaces[@]}" -gt 1 ];then
        clear
        echo -e "\n\t\t${CS_Purpura}${title_interficie_message[${language}]}:\v${reset}"
        for interface_path in "${interfaces[@]}";do
            local interface
            interface=$(basename "${interface_path}")

            if [ "${interface}" == "lo" ];then
                continue
            fi
            
            set_chipset "${interface}"
            info_interface_supported_bands "${interface}" 
            
            echo -e "${CVerde}${interficie_message_translate[${language}]} ${reset}${Azul}${interface}${reset}${NBlanco} // ${reset}${band}${reset}${CAmarillo}Chipset:${reset}${Blanco} ${chipset}${reset}"
        done

        unset chipset band

    else
        errorLog 7
        exit 1
    fi
}

function select_interface(){
    while true;do
        echo -e "\n${CAzul}Introduce el nombre de la interfaz:${reset}" 
        read -rp " ·> " interface
        if ip addr show "${interface}" >/dev/null 2>&1 && [ "${interface}" != "lo" ];then
        clear
        return 0
        else
            if [ "${interface}" == "lo" ];then
                errorLog 8
                continue
            fi
            errorLog 9 "${interface}"
        fi
    done
}

function info_interface_supported_bands(){
    
    if ! iw dev "${1}" info >/dev/null 2>/dev/null;then
        return 1
    fi

    local band_24
    local band_5

    if command -v iw >/dev/null 2>&1;then
        local phy
        phy=$(basename "$(readlink "/sys/class/net/${1}/phy80211")" 2> /dev/null)
        band_24=$(iw phy "${phy}" info | grep -Ei "24[0-9]{1,} MHz|Band 1")
        band_5=$(iw phy "${phy}" info | grep -Ei "5[0-9]{1,} MHz|Band 5")
    elif command -v iwlist >/dev/null 2>&1;then
        band_24=$(iwlist "${1}" freq 2>/dev/null | grep -iE "2\.[0-9]{1,} GHz")
        band_5=$(iwlist "${1}" freq 2>/dev/null | grep -iE "5\.[0-9]{1,} GHz" )
    fi

    if [ -z "${band_24}" ] && [ -z "${band_5}" ];then
        errorLog 10
    elif [ -z "${band_24}" ];then
        band="${CCian}5GHz.${reset}${NBlanco} // "
    elif [ -z "${band_5}" ];then
        band="${CCian}2.4GHz.${reset}${NBlanco} // "
    else 
        band="${CCian}2.4GHz. & 5GHz.${reset}${NBlanco} // "
    fi
}

function check_if_Ethernet_Wifi(){

    if command -v iwconfig >/dev/null 2>&1;then
        if iwconfig "${interface}" >/dev/null 2>&1;then
            mode="Wi-Fi"
            return 0
        else
            mode="Ethernet"
            return 0
        fi
    fi

    if command -v nmcli >/dev/null 2>&1;then
        if nmcli device show "${interface}" 2>/dev/null | grep 'GENERAL.TYPE' | grep -qi "ethernet";then
            mode="Ethernet"
            return 0
        else
            mode="Wi-Fi"
            return 0
        fi
    fi

    if [ -s "/proc/net/wireless" ];then
        if grep "${interface}" "/proc/net/wireless" 2>/dev/null >/dev/null;then
            mode="Wi-Fi"
            return 0
        else
            mode="Ethernet"
            return 0
        fi
    fi

    if [ -s "/sys/class/net/${interface}/type" ];then
        if [[ $(cat "/sys/class/net/${interface}/type" 2>/dev/null) -eq 1 ]];then
            mode="Ethernet"
            return 0
        else
            mode="Wi-Fi"
            return 0
        fi
    fi

    if [ -s "/sys/class/net/${interface}/wireless" ];then
        mode="Wi-Fi"
        return 0
    else
        mode="Ethernet"
        return 0
    fi

}

function get_ipv4(){

    if command -v ip >/dev/null 2>&1;then
        IPv4=$(ip -o -4 addr show dev "${1}" scope global 2>/dev/null | awk '{split($4,a,"/"); print a[1]}' | head -n1)
    elif command -v ifconfig >/dev/null 2>&1;then
        IPv4=$(ifconfig "${1}" 2>/dev/null | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | awk '{split($2,a,":"); print a[2]}' | head -n1)
    fi

}

function get_netmask_ip_ipv4(){

    cidr=""
    ip_netmask=""

    if command -v ip >/dev/null 2>&1;then
        cidr=$(ip -o -4 addr show dev "${interface}" 2>/dev/null | awk '{split($4,a,"/"); print a[2]}' | head -n1)
        get_ipnetmask "${cidr}"
    fi

    if command -v ifconfig > /dev/null 2>&1 && [ -z "${cidr}" ] ;then
        ip_netmask=$(ifconfig "${interface}" 2>/dev/null | grep -oP "(?<=netmask )[^\s]+" | head -n1)
        get_cidr "${ip_netmask}"
    fi
    
    wildcard_mask=$(echo "${ip_netmask}" | awk -F'.' '{print 255-$1"."255-$2"."255-$3"."255-$4}')
}
   
function get_ipnetmask(){ #? ESTO SACA LA DIRECCIÓN IP, 255.255.255.0
    
    local bits="${1}"
    if [ -z "${bits}" ];then
        return 1
    fi
    
    ip_netmask=""
    local mask

    for ((i = 0; i < 4; i++));do
        if [[ "${bits}" -ge 8 ]];then
            ip_netmask+="255."
            bits=$((bits-8))
        else
            mask=$((256 - 2**(8-bits)))
            ip_netmask+="${mask}."
            bits=0
        fi
    done

    ip_netmask="${ip_netmask::-1}"  # Eliminar el último punto
    
}

function get_cidr(){
    local ip_address="${1}"
    cidr=0
    IFS='.' read -r -a octets <<< "${ip_address}"

    for octet in "${octets[@]}";do
        while [ "${octet}" -gt 0 ];do
            cidr=$((cidr + 1))
            octet=$((octet & (octet - 1)))
        done
    done
    
}

function get_class_mask(){

    local mask="${1}"
    local first_octet
    first_octet=$(echo "${mask}" | cut -d '.' -f 1)
    if [ -z "${first_octet}" ];then
        return 1
    fi

    if [ "${first_octet}" -ge 1 ] && [ "${first_octet}" -lt 128 ];then
        class_mask="A"
    elif [ "${first_octet}" -ge 128 ] && [ "${first_octet}" -lt 192 ];then
        class_mask="B"
    elif [ "${first_octet}" -ge 192 ] && [ "${first_octet}" -lt 224 ];then
        class_mask="C"
    elif [ "${first_octet}" -ge 224 ] && [ "${first_octet}" -lt 240 ];then
        class_mask="D"
    elif [ "${first_octet}" -ge 240 ] && [ "${first_octet}" -lt 256 ];then
        class_mask="E"
    else
        class_mask="${unknown_message[${language}]}"
    fi
}

function get_ip_broadcast(){
    ip_broadcast=""

    if command -v ip >/dev/null 2>&1;then
        ip_broadcast=$(ip addr show "${interface}" 2>/dev/null | grep "inet" | grep "brd" | awk '{print $4}')
        return 0
    fi

    if command -v ifconfig >/dev/null 2>&1 && [ -z "${ip_broadcast}" ];then
        ip_broadcast=$(ifconfig "${interface}" 2>/dev/null | grep -oP 'broadcast \K\S+')
        return 0
    fi

    if [ -z "${ip_broadcast}" ];then
        calculate_broadcast "${IPv4}" "${ip_netmask}"
        return 0
    fi
}

function calculate_broadcast(){
    local ip="${1}"
    local mascara="${2}"

    IFS='.' read -ra ip_array <<< "${ip}"
    IFS='.' read -ra mascara_array <<< "${mascara}"

    local broadcast=""
    for ((i=0; i<4; i++));do
        broadcast+="$((ip_array["${i}"] | (255 - mascara_array["${i}"])))"
        if (( i < 3 ));then
            broadcast+="."
        fi
    done

    ip_broadcast="${broadcast}"
}

function get_gateway(){

    gateway=""

    if command -v nmcli >/dev/null 2>&1 && [ -z "${gateway}" ];then
        gateway=$(nmcli device show "${interface}" 2>/dev/null | awk '/IP4.GATEWAY/ {print $2}')
        return 0
    fi

    if command -v ip >/dev/null 2>&1;then
        gateway=$(ip route show 2>/dev/null | grep default | grep "${interface}" | awk '{print $3}')
        return 0
    fi

    if command -v route >/dev/null 2>&1 && [ -z "${gateway}" ];then
        gateway=$(route -n 2>/dev/null | grep "^0.0.0.0" | grep "${interface}" | awk '{print $2}')
        return 0
    fi

}

function get_mac(){

    mac=""
    local path="/sys/class/net/${interface}/address"
    if [ -s "${path}" ];then
        mac="$(tr "[:lower:]" "[:upper:]" < "${path}")"
        return 0
    fi

    if command -v ip >/dev/null 2>&1 && [ -z "${mac}" ];then
        mac=$(ip addr show "${interface}" 2>/dev/null | grep -w "link/ether" | awk '{print $2}' | tr "[:lower:]" "[:upper:]")
        return 0
    fi

    if command -v ifconfig && [ -z "${mac}" ];then
        mac=$(ifconfig "${interface}" 2>/dev/null | awk '/ether/ {print $2}' | tr "[:lower:]" "[:upper:]")
        return 0
    fi

    if command -v ethtool && [ -z "${mac}" ];then
        mac=$(ethtool -P "${interface}" 2>/dev/null | awk '{print $3}')
        return 0
    fi

    if command -v nmcli && [ -z "${mac}" ];then
        mac=$(nmcli device show "${interface}" 2>/dev/null | awk '/GENERAL.HWADDR/ {print $2}')
        return 0
    fi

}

function get_dns_servers(){
    
    dns_servers=()

    if [ -s "/etc/resolv.conf" ];then
        local resolv_file=()
        mapfile -t resolv_file < <(awk '/nameserver/ {print $2}' /etc/resolv.conf)
    fi

    if command -v nmcli >/dev/null 2>&1;then
        local nmcli_dns
        nmcli_dns=$(nmcli dev show "${interface}" 2>/dev/null | awk '/IP4.DNS/ {print $2}')
    fi

    mapfile -t dns_servers < <(printf "%s\n" "${resolv_file[@]}" "${nmcli_dns[@]}" | sort -u)
}

function check_if_dhcp_static(){

    if command -v ip >/dev/null 2>&1;then
        local output
        output=$(ip r | grep "^default via" | grep "${interface}" | cut -d " " -f7)
        
        if [ "${output}" == "dynamic" ] || [ "${output}" == "dhcp" ] || [ "${output}" == "auto" ];then
            echo -e "${Blanco}${message_interficie_dhcp[${language}]}${reset} ${Negro}(${reset}${Amarillo}dhcp${reset}${Negro})${punto}"
            get_dhcp_info
            return 0
        else
            echo -e "${Blanco}${message_interficie_static[${language}]} ${reset}${Negro}(${reset}${Amarillo}manual${reset}${Negro})${punto}"
            return 0
        fi
    fi


    if command -v nmcli >/dev/null 2>&1;then
        local uuid_con
        local output
        uuid_con=$(nmcli -t -f UUID,DEVICE c s --active 2>/dev/null | grep "${interface}" | cut -d ":" -f1  || nmcli -t -f NAME,DEVICE c s  2>/dev/null | grep "${interface}" | cut -d ":" -f1)

        output=$(nmcli -g ipv4.method con show "${uuid_con}" 2>/dev/null)
        
        if [ -z "${output}" ];then
            return 1
        fi

        if [ "${output}" == "dynamic" ] || [ "${output}" == "dhcp" ] || [ "${output}" == "auto" ];then
            echo -e "${Blanco}${message_interficie_dhcp[${language}]}${reset} ${Negro}(${reset}${Amarillo}dhcp${reset}${Negro})${punto}"
            get_dhcp_info
        else
            echo -e "${Blanco}${message_interficie_static[${language}]} ${reset}${Negro}(${reset}${Amarillo}manual${reset}${Negro})${punto}"
            return 0 
        fi

    fi
}

function calculate_seconds_to_minutes_hours(){
    
    local seconds="${1}"
    local total_seconds="${1}"
    
    local hours
    local minutes
    local days

    days=$((seconds / 86400))
    seconds=$((seconds % 86400))
    hours=$((seconds / 3600))
    seconds=$((seconds % 3600))
    minutes=$((seconds / 60))
    seconds=$((seconds % 60))


    if [ "${days}" -gt 0 ];then
        echo -ne "${days} ${message_days[${language}]} "
    fi

    if [ "${hours}" -gt 0 ];then
        echo -ne "${hours} ${message_hours[${language}]} "
    fi

    if [ "${minutes}" -gt 0 ];then
        echo -ne "${minutes} ${message_minutes[${language}]} "
    fi

    if [ "${seconds}" -gt 0 ];then
        echo -ne "${seconds} ${message_seconds[${language}]} "
    fi


    echo -e "(${total_seconds} s.)"
}

function get_mac_dhcp(){
    
    local ip="${1}"

    if command -v ip >/dev/null 2>&1;then
        mac_dhcp=$(ip neigh 2>/dev/null | grep -E "${ip} .*${interface}" | grep -Eo "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}" | tr "[:lower:]" "[:upper:]")
        if [ -n "${mac_dhcp}" ];then
            return 0
        fi
    fi

    if command -v arping >/dev/null 2>&1;then
        if check_root_permissions "arping" >/dev/null 2>&1;then
            arping -I "${interface}" -c 2 "${ip}" -r >/dev/null 2>/dev/null
            ping -c 2 -I "${interface}" "${ip}" >/dev/null 2>/dev/null
            if [ -n "${mac_dhcp}" ];then
                return 0
            fi
        fi
    fi

    if command -v arp >/dev/null 2>&1;then
 
        mac_dhcp=$(arp -n -e -i "${interface}" -D "${dhcp_server}" 2>/dev/null | grep "${dhcp_server}" | grep -Eo "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})" | tr "[:lower:]" "[:upper:]")
        if [ -n "${mac_dhcp}" ];then
            return 0
        else
            mac_dhcp="~~~~~"
        fi

    fi

    exit
}

function table(){
    
    local words=("${@}")
    local tmp=0
    local length=0

    for word in "${words[@]}";do
        if [ "${tmp}" -lt "${#word}" ];then
            length=$(("${#word}" + 4))
            tmp="${#word}"
        fi
    done

    echo -e "${length}"

}

function center_text(){
    local text="$1"
    local width="$2"
    local padding=$(( (width - ${#text}) / 2 ))
    local extra_padding=$(( (width - ${#text}) % 2 ))

    printf "%*s%s%*s" $((padding + extra_padding)) '' "${text}" ${padding} ''
}

function print_table(){

    local var1="${1}"
    local var2="${2}"
    local var3="${3}"
    local var4="${4}"
    local var5="${5}"
    # width_title = 1
    # width_value = 2
    # message_array = 3
    # value = 4
    # extra value = 5

    printf "| %-*s | %-*s | %s\n" "${var1}" "$(center_text "${var3}" "${1}")" "${var2}" "$(center_text "${var4}" "${2}")" "${var5}"
    printf "+-%-*s-+-%-*s-+\n" "${var1}" "$(printf '%*.s' "${var1}" "" | tr ' ' '-')" "${var2}" "$(printf '%*s' "${2}" "" | tr ' ' '-')"
}

function get_dhcp_info(){

    local var_lib="/var/lib/dhcp/dhclient.leases"
    local file=""
    local cont=0
    local dhcp_server=""
    local port=""
    local lease_time=""
    local renew_time=""
    local rebind_time=""
    local expire_time=""
    
    if [ -s "${var_lib}" ];then
        file=$(awk -v iface="${interface}" '$0 ~ "interface \"" iface "\"", /^}/ {block = block $0 RS} /^}/ && block ~ "interface \"" iface "\"" {print block; exit}' < "${var_lib}")
        if [ -n "${file}" ];then
            dhcp_server=$(printf "%s" "${file}" | awk -F'dhcp-server-identifier ' '{print $2}' | tr -d ';\n')
            lease_time=$(printf "%s" "${file}" | awk -F'dhcp-lease-time ' '{print $2}' | tr -d ';\n')
            expire_time=$(printf "%s" "${file}" | awk -F'expire ' '{print $2}' | tr -d ';\n')
            rebind_time=$(printf "%s" "${file}" | awk -F'rebind ' '{print $2}' | tr -d ';\n')
            renew_time=$(printf "%s" "${file}" | awk -F'renew ' '{print $2}' | tr -d ';\n')
            domain_name=$(printf "%s" "${file}" | awk -F'domain-name ' '{print $2}' | tr -d '";\n')
            ((cont++))
        fi
    fi
    
    if command -v nmcli >/dev/null 2>&1 && [ "${cont}" -eq 0 ];then    
        local lease_time_
        local expire_time_
        local renew_time_    
        local uuid_con
        local output_nmcli
        uuid_con=$(nmcli -t -f UUID,DEVICE c s --active 2>/dev/null | grep "${interface}" | cut -d ":" -f1  || nmcli -t -f NAME,DEVICE c s  2>/dev/null | grep "${interface}" | cut -d ":" -f1)
        output_nmcli=$(nmcli connection show "${uuid_con}" 2>/dev/null)
    
        if [ -n "${output_nmcli}" ];then
            dhcp_server=$(echo -n "${output_nmcli}" | grep "dhcp_server_identifier" | awk '{print $4}')
            lease_time_=$(echo "${output_nmcli}" | grep "dhcp_lease_time" | awk '{print $4}')
            lease_time=$(calculate_seconds_to_minutes_hours "${lease_time_}")
            expire_time_=$(echo "${output_nmcli}" | grep "expiry" | awk '{print $4}')
            expire_time=$(timestamp_to_date "${expire_time_}")
            renew_time_=$((lease_time_/2))
            renew_time=$(calculate_seconds_to_minutes_hours "${renew_time_}")
            domain_name=$(echo "${output_nmcli}" | grep " domain_name = " | awk '{print $4}')

        fi 
    fi
    
    get_mac_dhcp "${dhcp_server}"
    width_title=$(table "${message_server_dhcp_ip[${language}]}" "${message_domain_name[${language}]}" "${message_server_dhcp_mac[${language}]}" "${message_lease_time[${language}]}" "${message_expire_time[${language}]}" "${message_renew_time[${language}]}" "${message_rebind_time[${language}]}" "${message_server_dhcp_mac[${language}]}")
    width_value=$(table "${dhcp_server}" "${domain_name}" "${mac_dhcp}" "${lease_time}" "${expire_time}" "${renew_time}" "${rebind_time}" "${mac_dhcp}")

    table_width=$((width_title + width_value + 4))
    
    printf "+-%-*s+\n" "${width_title}" "$(printf '%*.s' "${table_width}" "" | tr ' ' '-')"
    
    printf "| %-*s|\n" "${table_width}" "$(center_text "${message_dhcp_information[${language}]}" "${table_width}")"

    printf "+-%-*s-+-%-*s-+\n" "${width_title}" "$(printf '%*.s' "${width_title}" "" | tr ' ' '-')" "${width_value}" "$(printf '%*s' "${width_value}" "" | tr ' ' '-')"

    unset table_width

    print_table "${width_title}" "${width_value}" "$(center_text "${message_server_dhcp_ip[${language}]}" "${width_title}")" "$(center_text "${dhcp_server}" "${width_value}")"
    print_table "${width_title}" "${width_value}" "$(center_text "${message_server_dhcp_mac[${language}]}" "${width_title}")" "$(center_text "${mac_dhcp}" "${width_value}")"
    print_table "${width_title}" "${width_value}" "$(center_text "${message_lease_time[${language}]}" "${width_title}")" "$(center_text "${lease_time}" "${width_value}")"
    print_table "${width_title}" "${width_value}" "$(center_text "${message_expire_time[${language}]}" "${width_title}")" "$(center_text "${expire_time}" "${width_value}")"
    print_table "${width_title}" "${width_value}" "$(center_text "${message_renew_time[${language}]}" "${width_title}")" "$(center_text "${renew_time}" "${width_value}")"

    if [ -n "${rebind_time}" ];then
        print_table "${width_title}" "${width_value}" "$(center_text "${message_rebind_time[${language}]}" "${width_title}")" "$(center_text "${rebind_time}" "${width_value}")"
    fi

    print_table "${width_title}" "${width_value}" "$(center_text "${message_domain_name[${language}]}" "${width_title}")" "$(center_text "${domain_name}" "${width_value}")"


}

function display_public_ip(){

    for arg in "${@}";do
        if [ "${arg^^}" == "--NO-IP" ] || [ "${arg}" == "-IP" ];then
            declare -A message_skip_feature_publicIP=(
                ["en"]="display public IPv4"
                ["es"]="mostrar IPv4 pública"
                ["ca"]="veure IPv4 pública"
            )
            format_message_translate "\n${Amarillo}${message_skip_function[${language}]}" "${message_skip_feature_publicIP[${language}]}${punto}"
            echo ""
            return 0
        fi
    done

    local public_ip
    local servers=("ifconfig.me" "api.ipify.org" "ipinfo.io/ip" "ipecho.net/plain" "-4 icanhazip.com")
    for web in "${servers[@]}";do
        public_ip=$(curl -sf "${web}" 2>/dev/null)
        if [ -n "${public_ip}" ];then
            echo -e "\n${Blanco}${message_public_ip[${language}]}${reset}${CCian}${public_ip}${reset}"
            return
        fi
    done
    
}

# * ---------------
# WIFI stuffs
function wifi_features(){

    local SSID
    local AP
    local channel
    local freq
    local link_speed
    
    if command -v iw >/dev/null 2>&1;then
        SSID=$(iw dev "${interface}" link | grep -i SSID | awk '{print $2}')
        AP=$(iw dev "${interface}" link | grep -i Connected | awk '{print $3}' | tr "[:lower:]" "[:upper:]")
        channel=$(iw dev "${interface}" info | grep -i channel | awk '{print $2}')
        freq=$(iw dev "${interface}" info | grep -i channel | awk '{print $3 " MHz."}' | tr -d "(" )
        link_speed=$(iw dev "${interface}" link | grep -i "tx bitrate" | awk '{print $3 " " $4}')
    elif command -v iwconfig >/dev/null 2>&1;then
        SSID=$(iwconfig "${interface}" 2>/dev/null | grep "ESSID" | awk '{print $4}' | tr -d \" | cut -d ":" -f2)
        AP=$(iwconfig "${interface}" 2>/dev/null | grep "Access Point:" | awk '{print $6}' | tr "[:lower:]" "[:upper:]")
        channel=$(iw dev "${interface}" 2>/dev/null info | grep "channel" | cut -d "," -f1 | tr -d "\t" | cut -d " " -f2-)
        freq=$(iwconfig "${interface}" 2>/dev/null | grep -Eo "Frequency:[0-9]{1,}\.[0-9]{1,} GHz" | cut -d ":" -f2)
        link_speed=$(iwconfig "${interface}" 2>/dev/null | awk '/Bit Rate=/ {print $2 $3}' | cut -d "=" -f2)
    fi

    echo -e "${Blanco}${message_link_speed[${language}]}: ${reset}${CCian}${link_speed}${punto}"
    echo -e "${Blanco}${message_SSID[${language}]}: ${reset}${CCian}${SSID}${reset}"
    echo -e "${Blanco}${message_AP[${language}]}: ${reset}${CCian}${AP}${reset}"
    echo -e "${Blanco}${message_channel[${language}]}: ${reset}${CCian}${channel}${punto}"
    echo -e "${Blanco}${message_freq[${language}]}: ${reset}${CCian}${freq}${punto}"
}

function info_signal_wifi(){

    local RSSI
    RSSI=$(iwconfig "${interface}" 2>/dev/null | grep "Signal level" | cut -d " " -f15 | cut -d "=" -f2)
    if [ -z "${RSSI}" ];then
        return 1
    fi

    if [ "${RSSI}" -le "0" ] && [ "${RSSI}" -ge "-30" ];then
        echo -e "${NBlanco}[${reset}${CVerde}${message_signal_type_1[${language}]}${reset}${NBlanco}]${reset}${Blanco} $(format_message_translate "${message_signal_info[${language}]}" "${RSSI}")"
    elif [ "${RSSI}" -le "-31" ] && [ "${RSSI}" -ge "-59" ];then
        echo -e "${NBlanco}[${reset}${CVerde}${message_signal_type_2[${language}]}${reset}${NBlanco}]${reset}${Blanco} $(format_message_translate "${message_signal_info[${language}]}" "${RSSI}")"
    elif [ "${RSSI}" -le "-60" ] && [ "${RSSI}" -ge "-80" ];then
        echo -e "${NBlanco}[${reset}${CAmarillo}${message_signal_type_3[${language}]}${reset}${NBlanco}]${reset}${Blanco} $(format_message_translate "${message_signal_info[${language}]}" "${RSSI}")"
    elif [ "${RSSI}" -le "-81" ] && [ "${RSSI}" -ge "-90" ];then
        echo -e "${NBlanco}[${reset}${Rojo}${message_signal_type_4[${language}]}${reset}${NBlanco}]${reset}${Blanco} $(format_message_translate "${message_signal_info[${language}]}" "${RSSI}")"
    else
        echo -e "${NBlanco}[${reset}${NRojo}${message_signal_type_5[${language}]}${reset}${NBlanco}]${reset}${Blanco} $(format_message_translate "${message_signal_info[${language}]}" "${RSSI}")"
    fi
}

function check_monitor_wifi(){

    if [ "${mode}" == "Ethernet" ];then
        return 0
    fi

    local modo_m
    modo_m=$(iw dev "${interface}" info 2>/dev/null | grep "type" | awk '{print $2}')

    if [ "${modo_m}" == "Monitor" ];then
        echo -e "${Blanco}${message_monitor_on[${language}]}${punto}"
    else
        echo -e "${Blanco}${message_monitor_off[${language}]}${punto}"
    fi

}

function wifi_security(){

    if command -v nmcli >/dev/null 2>&1;then
        connection_name=$(nmcli c 2>/dev/null | grep "${interface}" | awk '{print $1}' 2>/dev/null)
        if [ -z "${connection_name}" ];then
            return 1
        fi
        local encryption
        local passwd
        local file="/etc/NetworkManager/system-connections/${connection_name}.nmconnection"

        if [ ! -s "${file}" ];then
            errorLog 21 "${file}"
            return 1
        fi

        if [ -r "${file}" ];then
            encryption=$(grep -E "^key-mgmt" < "${file}" 2>/dev/null | cut -d "=" -f2 2>/dev/null)
            passwd=$(grep -E ^"psk" < "${file}"  2>/dev/null | cut -d "=" -f2 2>/dev/null)
            if [ -z "${passwd}" ] && [ -z "${cifrado}" ];then
                echo -e "${Blanco}${message_no_password[${language}]}${punto}"
            else
                echo -e "${Blanco}$(format_message_translate "${message_password[${language}]}" "${encryption}" "${passwd}")${punto}"
            fi
        else
            errorLog 5 "${no_perms_passwd[${language}]}"
        fi
    fi

}

function check_promisc(){
    if command -v ip >/dev/null 2>&1;then
        if ip link show "${interface}" 2>/dev/null | grep -iq "PROMISC";then
            echo -e "${Blanco}${message_promiscue_on[${language}]}${punto}" 
        else
            echo -e "${Blanco}${message_promiscue_off[${language}]}${punto}"
        fi
        return 0
    fi

    if command -v ifconfig >/dev/null 2>&1;then
        if ifconfig "${interface}" 2>/dev/null | grep -iq "PROMISC";then
            echo -e "${Blanco}${message_promiscue_on[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_promiscue_off[${language}]}${punto}"
        fi
        return 0
    fi

    if command -v netstat >/dev/null 2>&1;then
        if netstat -i 2>/dev/null | grep "${interface}" | awk '{print $NF}' | grep -q "P";then
            echo -e "${Blanco}${message_promiscue_on[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_promiscue_off[${language}]}${punto}"
        fi
        return 0
    fi

    if [ -s "/sys/class/net/${interface}/flags" ];then
        local flags_hex
        flags_hex=$(< "/sys/class/net/${interface}/flags")
        if [ "${flags_hex}" != "0x1103" ];then
            echo -e "${Blanco}${message_promiscue_off[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_promiscue_on[${language}]}${punto}"
        fi
        return
    fi

}

function get_driver(){
    local driver
    local driver_version
    local driver_support_test

    if command -v ethtool >/dev/null 2>&1;then
        driver=$(ethtool -i "${interface}" 2>/dev/null | grep -i "driver:" | awk '{print $2}')
        driver_version=$(ethtool -i "${interface}" 2>/dev/null | grep -iE "^version:" | awk '{print $2}')
        firmware=$(ethtool -i "${interface}" 2>/dev/null | grep -i "firmware-version:" | awk '{print $2}')
        if [ -s "${firmware}" ];then
            echo -e "${Blanco}Firmware: ${reset}${CCian}${firmware}"
        fi

        driver_support_test=$(ethtool -i "${interface}" 2>/dev/null | grep -i "supports-test:" | awk '{print $2}' )
        declare -A message_test_compatible=(
            ["en"]="The driver is compatible with tests"
            ["es"]="El driver es compatible a pruebas"
            ["ca"]="El driver és compatible a proves"
        )
        declare -A message_test_not_compatible=(
            ["en"]="The driver is not compatible with tests"
            ["es"]="El driver no es compatible a pruebas"
            ["ca"]="El driver no és compatible a proves"
        )

        if [ "${driver_support_test}" == "yes" ];then
            echo -e "${Blanco}${message_test_compatible[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_test_not_compatible[${language}]}${punto}"
        fi

    elif command -v lshw >/dev/null 2>&1;then
        local output_lshw
        output_lshw=$(lshw -class network 2>/dev/null | grep -A 10 "logical name: ${interface}" | grep -w "configuration:")
        driver_version=$(echo "${output_lshw}" | grep -o 'driverversion=[^ ]*' | awk -F '=' '{print $2}')
        driver=$(echo "${output_lshw}" |grep -o 'driver=[^ ]*' | awk -F '=' '{print $2}')

    elif [ -L "/sys/class/net/${interface}" ];then
        driver=$(basename "$(readlink "/sys/class/net/${interface}/device/driver/module")")
        driver_version=$(modinfo "${driver}" | grep "vermagic" | awk '{print $2}') 
    fi
    
    declare -A message_version=(
        ["en"]="Version"
        ["es"]="Versión"
        ["ca"]="Versió"
    )
    echo -e "${Blanco}Driver:${reset}${CCian} ${driver}${reset}${Blanco}\t${message_version[${language}]}: ${reset}${CCian}${driver_version}${punto}"
    
}

function get_cable_info(){
   local velocity
   local duplex
   local driver
   local port
   local autonegotiation
   local links

    if command -v ethtool >/dev/null 2>&1;then
        local output_ethtool
        output_ethtool=$(ethtool "${interface}" 2>/dev/null)
        autonegotiation=$(echo "${output_ethtool}" | grep "Auto-negotiation:" | awk '{print $2}' )
        links=$(echo "${output_ethtool}" | awk '/Supported link modes:/ {found=1; print; next} found && /^[[:space:]]{2,}/ {print; next} {found=0}' | tr -d "\t\n" | cut -d ":" -f2 | sed 's/ \{1,\}/, /g' | sed 's/^, //')
        velocity=$(echo "${output_ethtool}" | grep -i "Speed:" | awk '{print $2}' )
        duplex=$(echo "${output_ethtool}" 2>/dev/null | grep -i "Duplex:" | awk '{print $2}')
        port=$(echo "${output_ethtool}" | grep -i "Port:" | cut -d " " -f2-)

        echo -e "${Blanco}Cable:${reset}${CCian} ${port}${punto}"
        echo -e "${Blanco}${message_link[${language}]}:${reset}${CCian} ${links}${punto}"

    elif check_root_permissions "dmesg" >/dev/null 2>&1;then
        velocity=$(dmesg | grep -i "${driver}" | grep -Eo "[0-9]{1,} Mbps")
        duplex=$(dmesg | grep "${interface}" | grep -oP '\S+(?= Duplex)' )
    
    elif command -v lshw >/dev/null 2>&1;then
        local output_lshw
        output_lshw=$(lshw -class network 2>/dev/null | grep -A 10 "logical name: ${interface}" | grep -w "configuration:")
        port=$(echo "${output_lshw}" | sed -n 's/.*port=\(.*\) speed=.*/\1/p' )
        velocity=$(echo "${output_lshw}" | grep -o 'speed=[^ ]*' | awk -F '=' '{print $2}')
        autonegotiation=$(echo "${output_lshw}" | grep -o 'autonegotiation=[^ ]*' | awk -F '=' '{print $2}' )
        duplex=$(echo "${output_lshw}" | grep -o 'duplex=[^ ]*' | awk -F '=' '{print $2}')

        echo -e "${Blanco}Cable:${reset}${CCian} ${port}${punto}"
    fi
    
    if [ "${autonegotiation}" == "on" ];then
        echo -e "${Blanco}Auto-negotiation: ${reset}${CCian}${message_on[${language}]}${punto}"
    elif [ "${autonegotiation}" == "off" ];then
        echo -e "${Blanco}Auto-negotiation: ${reset}${CCian}${message_off[${language}]}${punto}"
    fi

    echo -e "${Blanco}${message_velocity[${language}]} ${reset}${CCian}${velocity}${punto}"
    echo -e "${Blanco}Duplex: ${reset}${CCian}${duplex}${punto}"
}

function timestamp_to_date(){
    local timestamp="${1}"
    date -d "@${timestamp}" "+%Y-%m-%d %H:%M:%S"
}

# OPTION 2 - FIX  NETWORK
function check_validate_IPv4(){
    local ip="${1}"
    if [ -z "${ip}" ];then
        errorLog 11
        return 1
    fi

    local type="${2}"
    local ip_regex="^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"

    if [[ ! "${ip}" =~ ${ip_regex} ]];then # Ignora las "" de ip_regex
        errorLog 12 "${ip}"
        return 1
    fi

    if [[ "${ip}" =~ 169\.254\.* ]];then
        errorLog 32
    fi

    if [[ "${ip}" =~ ^0\.* || "${ip}" =~ ^127\.* || "${ip}" =~ ^255\.*  || "${ip}" =~ 169\.254* ]];then
        errorLog 12 "${ip}"
        return 1
    fi

    case "${type}" in
        "none") return 0;;
        "public")
            if [[ "${ip}" =~ ^10\. || "${ip}" =~ ^172\.(1[6-9]|2[0-9]|3[0-1])\. || "${ip}" =~ ^192\.168\. ]];then
                return 1
            else
                return 0
            fi
        ;;
        "private")
            if [[ "${ip}" =~ ^192\.168\.(.*\.)?(0|255) ]];then
                return 1
            fi

            if [[ "${ip}" =~ ^10\. || "${ip}" =~ ^172\.(1[6-9]|2[0-9]|3[0-1])\. || "${ip}" =~ ^192\.168\. ]];then
                return 0
            else
                return 1
            fi
        ;;
    esac
}

function is_same_network(){
    local ip1="${1}"
    local ip2="${2}"
    local subnet_mask="${3}"

    # Convertir las IPs y la máscara a números enteros
    IFS=. read -r i1 i2 i3 i4 <<< "${ip1}"
    local int_ip1=$(( (i1<<24) + (i2<<16) + (i3<<8) + i4 ))

    IFS=. read -r i1 i2 i3 i4 <<< "${ip2}"
    local int_ip2=$(( (i1<<24) + (i2<<16) + (i3<<8) + i4 ))

    IFS=. read -r m1 m2 m3 m4 <<< "${subnet_mask}"
    local int_subnet=$(( (m1<<24) + (m2<<16) + (m3<<8) + m4 ))

    # Realizar las operaciones de "AND" lógico
    local result1=$((int_ip1 & int_subnet))
    local result2=$((int_ip2 & int_subnet))
    # Comprobar si los resultados son iguales
    if [ "${result1}" -eq "${result2}" ];then
        return 0
    else
        errorLog 14 "${gateway}" "${IPv4}"
        return 1
    fi
}

errors=0
function check_if_duplicate_ip(){
    
    width_title=$(table "${message_ipv4[${language}]}" "${IPv4}")
    width_value=$(table "${message_mac[${language}]}" "${mac}")

    table_width=$((width_title + width_value + 4))

    if command -v arping >/dev/null 2>&1;then
        
        if ! check_root_permissions "arping" "${message_feature_duplicate_IP[${language}]}";then
            return 1
        fi

        if ! confirm_action "${advertencia} ${SSC_Amarillo}${word_warning[${language}]}:${reset} ${CPurpura}$(format_message_translate "${message_warning_security[${language}]}" "${message_feature_duplicate_IP[${language}]}")${reset} ";then
            format_message_translate "${message_skip_function[${language}]}" "${message_feature_duplicate_IP[${language}]}."
            echo ""
            return 0
        fi

        mapfile -t MACs_from_duplicate_IP < <(arping -c 6 -r -d -I "${interface}" "${IPv4}" -S "${gateway}" 2>/dev/null | grep ":" | tr ' ' '\n' | sort -u | tr "[:lower:]" "[:upper:]")

        if [ "${#MACs_from_duplicate_IP[@]}" -ge 1 ];then
            ((errors++))

            errorLog 13 $((${#MACs_from_duplicate_IP[@]}+1))

            printf "+-%-*s+\n" "${width_title}" "$(printf '%*.s' "${table_width}" "" | tr ' ' '-')"
            print_table "${width_title}" "${width_value}" "$(center_text "${message_ipv4[${language}]}" "${width_title}")" "$(center_text "${message_mac[${language}]}" "${width_value}")"

            print_table "${width_title}" "${width_value}" "$(center_text "${IPv4}" "${width_title}")" "$(center_text "${mac}" "${width_value}")" "${message_this_device[${language}]}"
            for device in "${MACs_from_duplicate_IP[@]}";do
                print_table "${width_title}" "${width_value}" "$(center_text "${IPv4}" "${width_title}")" "$(center_text "${device}" "${width_value}")"
            done
        fi
    fi
   

}

function check_dns(){
    local server="${1}"

    if nslookup -timeout=2 "google.com" "${server}" >/dev/null 2>&1;then
        echo -e "${Blanco}$(format_message_translate "${message_DNS_success[${language}]}" "${server}")${punto}"
        return 0
    else
        if ping -I "${interface}" -c 2 "${server}" >/dev/null 2>&1;then
            errorLog 15 "${server}"
            ((errors++))
        else
            errorLog 16 "${server}"
            ((errors++))
        fi
        return 1
    fi
}

function check_plug_cable(){

    local cable
    local number

    if [ "${mode}" == "Wi-Fi" ];then
        number=18
    elif [ "${mode}" == "Ethernet" ];then
        number=17
    fi

    if [ -s "/sys/class/net/${interface}/carrier" ];then
        cable=$(cat "/sys/class/net/${interface}/carrier" 2>/dev/null)
        if [[ -z "${cable}" ]] || [[ "${cable}" -eq 0 ]];then
            errorLog "${number}"
            ((errors++)) 
        elif [ "${mode}" == "Wi-Fi" ];then
            echo -e "${Blanco}${message_wireless_success[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_cable_success[${language}]}${punto}"
        fi

    elif command -v ethtool >/dev/null 2>&1;then
        cable=$(ethtool "${interface}" 2>/dev/null | grep "Link detected:" |  awk -F':' '{print $2}' | tr '[:upper:]' '[:lower:]')
        if [ "${cable}" == " no" ] || [ -z "${cable}" ];then # ESTÁ VACÍO
            errorLog "${number}"
            ((errors++))
        elif [ "${mode}" == "Wi-Fi" ];then
            echo -e "${Blanco}${message_wireless_success[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_cable_success[${language}]}${punto}"
        fi

    elif command -v ip >/dev/null 2>&1;then
        cable=$(ip link show "${interface}" 2>/dev/null | awk '/state/ {print $9}' | tr '[:upper:]' '[:lower:]')

        if [ "${cable}" == "down" ] || [ -z "${cable}" ];then
            errorLog "${number}"
            ((errors++))
        elif [ "${mode}" == "Wi-Fi" ];then
            echo -e "${Blanco}${message_wireless_success[${language}]}${punto}"
        else
            echo -e "${Blanco}${message_cable_success[${language}]}${punto}"
        fi
    fi
}

function test_gateway(){
 
    for i in {1..5};do
        if ping -w 1 -c 1 "${gateway}" -I "${interface}" >/dev/null 2>&1;then
            echo -e "${Blanco}$(format_message_translate "${message_gateway_success[${language}]}" "${gateway}")${punto}"
            return 0        
        fi
    done

    errorLog 19 "${gateway}"
    ((errors++))
    return 1
}


function check_radio_wifi(){
    if command -v nmcli >/dev/null 2>&1;then
        if nmcli radio wifi | grep -q "enabled";then
            return 0
        else
            errorLog 34
            return 1
        fi
    fi
}

function check_traceroute_hosts(){

    if ! command -v traceroute >/dev/null 2>&1;then
        return 1
    fi

    local traceroute_output
    traceroute_output=$(traceroute -m 5 -i "${interface}" "1.1.1.1" 2>/dev/null | grep -v "traceroute" | tr -d "(" | tr -d ")" | awk '{ print $3, $4, $5, $NF}' )
    if [ -z "${traceroute_output}" ];then
        errorLog 20
        ((errors++))
        return 1
    fi

    local tracert_count=1 # 1 If errors | 0 no errors on traceroute
    local cont=0 # 
    local failed # Get problematic IP from traceroute (host down)
    local msg # (ip + ms | foreach host of traceroute)
    local ip
    local ms

    while IFS= read -r line;do

        ip=$(echo "${line}" | awk '{print $1}')
        if [[ "${line}" == *' * '* || "${line}" == *' !H'* ]];then
            failed+="${ip}"
            ((tracert_count++))
        else
            ms=$(echo "${line}" | awk '{print "(" $2 $3 ")"}')
            msg+="${ip} ${ms}\n"
            if check_validate_IPv4 "${ip}" "public" || [ "${ip}" == "1.1.1.1" ] || [ "${ip}" == "one.one.one.one" ];then
                tracert_count=0
                break
            elif check_validate_IPv4 "${ip}" "private";then
                if [ "${cont}" -eq 2 ];then
                    tracert_count=0
                    break
                else
                    ((cont++))
                fi
            fi


        fi
    done <<< "${traceroute_output}"

    if [ "${tracert_count}" -eq 0 ];then
        echo -e "${Blanco}${message_tracert_success[${language}]}${punto}"
    else
        echo -e "\n${CNegro}${message_POT[${language}]}${punto}"
        errorLog 20
        ((errors++))
        echo -e "${msg}"
        if [[ "${failed}" =~ \* ]];then
            echo -e "${Blanco}${message_tracert_H[${language}]}${punto}\n"
        elif [ -n "${failed}" ];then
            echo -e "${CAzul}${failed}${reset} ${message_tracert_problem[${language}]}${punto}\n"
        fi
    fi
}

function check_nsswitch(){
    local nsswitch_file="/etc/nsswitch.conf"

    if [ ! -f "${nsswitch_file}" ];then
        errorLog 21
        ((errors++))
        return 1
    fi
    
    hosts_config=$(grep "^hosts:" "${nsswitch_file}" | cut -d ":" -f2 | sed 's/^ *//g')

    if [ -z "${hosts_config}" ];then
        errorLog 22
        ((errors++))
        return 1
    fi

    if ! echo "${hosts_config}" | grep -q "files";then
        errorLog 23
        ((errors++))
        return 1
    fi

    if ! echo "${hosts_config}" | grep -wq "dns";then
        errorLog 24
        ((errors++))
        return 1
    fi

    echo -e "${Blanco}${mesage_nsswitch_success[${language}]}${punto}"
}

function detect_network_service {

    declare -A services_supported=(
        ["NetworkManager"]="nmcli"
        ["network-manager"]="nmcli"
    )
    declare -g services_system=()

    if command -v systemctl >/dev/null 2>&1;then

        for service in "${!services_supported[@]}";do
            if command -v "${services_supported[${service}]}">/dev/null 2>&1;then
                services_system+=("${service}")

                if systemctl --quiet is-active "${service}" 2>/dev/null;then
                    name_service="${service}"
                    echo -e "\n${Blanco}$(format_message_translate "${message_service_found[${language}]}" "${name_service}")${punto}"
                    return 0
                fi

            fi
        done

    elif command -v service >/dev/null 2>&1;then

        for service in "${!services_supported[@]}";do
            if command -v "${services_supported[${service}]}">/dev/null 2>&1;then
                services_system+=("${service}")

                if sudo -n service "${service}" status 2>/dev/null;then
                    name_service="${service}"
                    echo -e "\n${Blanco}$(format_message_translate "${message_service_found[${language}]}" "${name_service}")${punto}"
                    return 0
                fi

            fi
        done
    fi

    if [ "${#services_system[@]}" -eq 0 ];then
        errorLog 25
    else
        no_network_services_activate
    fi
}

function no_network_services_activate(){
    errorLog 26
    echo -e "${CPurpura}${message_compatible_serv[${language}]}\n"
    for ((i=0; i<${#services_system[@]}; i++));do
        lista+="${Rojo}$((i+1))${reset}${CNegro})${reset} ${Verde}${services_system[${i}]}${reset}\n"
    done

    while true;do
        echo -e "${lista}"
        read -rp " ·> " opcion
        if [ "${opcion}" -ge 1 ] && [ "${opcion}" -le "${#services_system[@]}" ];then
            seleccion="${services_system[$((opcion-1))]}"
            case "${seleccion}" in
                "NetworkManager"|"network-manager")
                    if command -v systemctl >/dev/null 2>&1;then

                        if check_root_permissions "systemctl" "$(format_message_translate "${message_start_service[${language}]}" "NetworkManager")";then
                            if sudo -n systemctl restart NetworkManager >/dev/null 2>&1;then
                                echo -e "${Blanco}$(format_message_translate "${message_service_on[${language}]}" "NetworkManager")${punto}"
                                return 0
                            else
                                errorLog 27 "${seleccion}"
                            fi
                        fi

                    elif command -v service >/dev/null 2>&1;then
                        if check_root_permissions "service" "$(format_message_translate "${message_start_service[${language}]}" "NetworkManager")";then
                            if service NetworkManager start || service network-manager restart >/dev/null 2>&1;then
                                echo -e "${Blanco}$(format_message_translate "${message_service_on[${language}]}" "NetworkManager")${punto}"
                                return 0
                            else
                                errorLog 27 "${seleccion}"
                            fi
                        fi
                    fi

                ;;
            esac
            break
        else
            errorLog 2 "${#services_system[@]}"
        fi
    done
}

new_dns=()
function input_valid_ipv4(){
    
    local var_name="${1}"
    local type="${2}"
    local option="${3}"
    local ip_input
    while true;do
        echo -e "\n${CPurpura}$(format_message_translate "${message_input_IPv4[${language}]}" "${var_name}")${reset}"
        if [ "${option}" == "skip" ];then  
            echo -e "${CPurpura}${message_stop_skip[${language}]} ${reset}${CAzul}'${reset}${CRojo}STOP${reset}${CAzul}'${punto}"  
        fi
        read -rp " ·> " ip_input

        if [ "${ip_input^^}" == "STOP" ];then
            return 0
        elif check_validate_IPv4 "${ip_input}" "${type}";then
            if [ "${var_name}" == "new_dns" ] && [ "${option}" != "skip" ];then
                declare -A message_validate_dns=(
                    ["en"]="The DNS server is being verified; if it's not suitable, the IP will be discarded"
                    ["es"]="Se está verificando el servidor DNS; si no es apto, se descartará la IP"
                    ["ca"]="S'està verificant el servidor DNS; si no és apte, es descartarà la IP"
                )
                echo -e "${Amarillo}${message_validate_dns[${language}]}${punto}"
                if check_dns "${ip_input}";then
                    new_dns+=("${ip_input}")
                fi
            elif [ "${var_name}" != "new_dns" ];then
                declare -g "${var_name}=${ip_input}"
                return 0
            else
                new_dns+=("${ip_input}")
            fi
        fi
    done
}

function input_cidr(){
    new_cidr=24               
    while true;do
        echo -e "\n${CPurpura}${message_new_cidr[${language}]}${punto}"
        read -rp " ·> " input_cidr
        if [ -z "${input_cidr}" ] || [ "${input_cidr^^}" == "STOP" ];then
            return 0
        elif [ "${input_cidr}" -gt 0 ] && [ "${input_cidr}" -le 32 ];then
            new_cidr="${input_cidr}"
            return 0
        else
            errorLog 2 32
        fi
    done
}

function confirm_action(){
    local message="${1}"

    while true;do
        echo -e "\n${message} ${yes_no}"
        read -rp " ·> " answer
        case "${answer^^}" in
            "YES"|"Y")
                return 0
            ;;
            "NO"|"N")
                return 1
            ;;
            *)
                errorLog 28
            ;;
        esac
    done
}

function input_name_connection_networkmanager(){

    declare -A message_input_name_connection_networkmanager=(
        ["en"]="Set the name for the new NetworkManager profile"
        ["es"]="Establece el nombre del nuevo perfil de NetworkManager"
        ["ca"]="Estableix el nom del nou perfil de NetworkManager"
    )
    declare -A message_confirm_var_name=(
        ["en"]="${Verde}Are you sure the name is ${reset}${Amarillo}'%s'"
        ["es"]="${Verde}¿Estás seguro de que el nombre sea ${reset}${Amarillo}'%s'"
        ["ca"]="${Verde}Estàs segur que el nom siga ${reset}${Amarillo}'%s'"
    )

    while true;do
        echo -e "\n${CPurpura}${message_input_name_connection_networkmanager[${language}]}${punto}"
        read -rp " ·> " name_connection
        if confirm_action "$(format_message_translate "${message_confirm_var_name[${language}]}${reset}${Verde} ?" "${name_connection}")";then
            break
        fi
    done
}

function check_GUI(){
    
    # XDG_SESSION_TYPE and DISPLAY are Environment Variables.
    
    if [ "${XDG_SESSION_TYPE}" != "tty" ] && [ -n "${DISPLAY}" ];then
        return 0 # There is a GUI
    else
        return 1 # There is not a GUI
    fi
}

function type_password(){
    echo -e "\n\n${Blanco}$(format_message_translate "${message_type_password[${language}]}" "${1}" "${2}")${punto}"
    read -rsp " ·> " passwd
    echo ""
}

function get_wifi_nmcli(){

    if ! command -v "nmcli" >/dev/null 2>&1;then
        return 1
    fi

    local output

    tput civis
    echo -e "\n${Blanco}${message_search_wifi[${language}]}${punto}\n"
    output=$(nmcli -c yes -f SSID,BSSID,CHAN,FREQ,RATE,BARS,SECURITY device wifi list ifname "${interface}" --rescan yes)
    declare -A display_wifi=()
    local cont=1

    # Separar las líneas de la salida en un arreglo
    IFS=$'\n' read -rd '' -a lines <<< "${output}"

    # Imprimir el encabezado sin número
    echo "   ${lines[0]}"
    # Utilizar un bucle for que comienza en la segunda línea
    for ((i = 1; i < ${#lines[@]}; i++));do
        echo -e "${CRojo}${cont}${parentesis} ${lines[i]}"
        display_wifi+=([${cont}]=${lines[i]})
        ((cont++))
    done

    tput cnorm
    while true;do
        read -rp " ·> " wifi
        if [[ "${wifi}" -ge 1 ]] && [[ "${wifi}" -le "${#display_wifi[@]}" ]];then
            bssid=$(echo "${display_wifi[${wifi}]}" | awk '{print $2}' | sed -r "s/\x1B\[[0-9;]*[mK]//g")
            return 0
        else
            errorLog 2 "${#display_wifi[@]}"
        fi
    done

}

function create_connection_nmcli(){
    
    # ! ARGS
        # ? @type => manual or dhcp
        # ? @mode → Ethernet or Wi-Fi

    local type="${1}"
    case "${mode}" in
        "Ethernet")
            input_name_connection_networkmanager

            if [ "${type}" == "manual" ];then
                nmcli connection add con-name "${name_connection}" ifname "${interface}" type ethernet ipv4.method "static" autoconnect yes
            else
                nmcli connection add con-name "${name_connection}" ifname "${interface}" type ethernet ipv4.method "auto" autoconnect yes
            fi

        ;;
        "Wi-Fi")
            input_name_connection_networkmanager
            get_wifi_nmcli

            local con_wifi
            local ssid
            local ssid_hex
            local chan
            local freq
            local security
            con_wifi=$(nmcli -c no -f SSID,SSID-HEX,CHAN,SECURITY,FREQ device wifi list ifname "${interface}" bssid "${bssid}" 2>/dev/null | tail -n1)
            if [ -z "${con_wifi}" ];then
                echo "SE PRODUJO UN ERROR AL OBTENER INFORMACIÓN DEL WI-FI CON BSSID ${bssid}"
                return 1
            fi
            
            ssid="$(echo "${con_wifi}" | awk '{print $1}')"
            ssid_hex="$(echo "${con_wifi}" | awk '{print $2}')"
            chan="$(echo "${con_wifi}" | awk '{print $3}')"
            security="$(echo "${con_wifi}" | awk '{print $4}')"
            freq="$(echo "${con_wifi}" | awk '{print $5}')"
            if [[ "${ssid}" == "--" ]] && [[ "${ssid_hex}" == "--" ]];then
                echo "Red oculta NO soportado".
                return 1
            fi
            
            if [[ "${freq}" =~ ^5 ]];then
                band="a" # 5GHz
            elif [[ "${freq}" =~ ^24 ]];then
                band="bg" # 2.4GHz
            else
                echo "BANDA NO SOPORTE"
                return 1
            fi


            if [ "${security}" == "--" ]; then
                encryption=""
            else
                type_password "${ssid}" "${bssid}"
                case "${security}" in
                    "WPS")
                        echo "WPS"
                        ;;
                    "WEP") # ? NO TESTEADO.
                        encryption="802-11-wireless-security.key-mgmt none"
                        encryption="${encryption} 802-11-wireless-security.wep-key-type \"104/128-bit\""
                        encryption="${encryption} 802-11-wireless-security.wep-tx-keyidx \"0\""
                        encryption="${encryption} 802-11-wireless-security.wep-key1 ${passwd}"
                        ;;
                    WPA*)
                        encryption="802-11-wireless-security.key-mgmt wpa-psk"
                        encryption="${encryption} 802-11-wireless-security.psk ${passwd}"
                        ;;
                    *)
                        errorLog 33
                        return 1
                esac
            fi


            if [ "${type}" == "manual" ];then
                nmcli connection add con-name "${name_connection}" ifname "${interface}" type wifi ssid "${ssid}" \
                    ipv4.method "static" \
                    autoconnect yes \
                    802-11-wireless.bssid "${bssid}" \
                    802-11-wireless.band "${band}" \
                    802-11-wireless.channel "${chan}" \
                    ${encryption}
            else
                nmcli connection add con-name "${name_connection}" ifname "${interface}" type wifi ssid "${ssid}" \
                    ipv4.method "auto" \
                    autoconnect yes \
                    802-11-wireless.bssid "${bssid}"\
                    802-11-wireless.band "${band}" \
                    802-11-wireless.channel "${chan}" \
                    ${encryption}
            fi

        ;;
    esac
    
    conn_networkmanager=$(nmcli -t -f NAME,UUID c s | grep "${name_connection}" | cut -d ":" -f2)
}

function get_conn_name_nmcli(){
    local name
    local device
    local uuid
    local uuid_active

    # Obtener la conexión activa actual
    uuid_active=$(nmcli -t -f NAME,DEVICE,UUID c s --active 2>/dev/null | grep "${interface}")
    if [ -n "${uuid_active}" ];then
        name=$(echo "${uuid_active}" | cut -d ":" -f1)
        device=$(echo "${uuid_active}" | cut -d ":" -f2)
        uuid=$(echo "${uuid_active}" | cut -d ":" -f3)

        # Mensaje para mostrar la conexión activa por defecto
        declare -A message_get_conn_name_nmcli_default=(
            ["en"]="By default, the current active connection is set"
            ["es"]="Por defecto, se establece la conexión activa actual"
            ["ca"]="Per defecte, s'estableix la connexió activa actual"
        )
        echo -e "\n${Blanco}${message_get_conn_name_nmcli_default[${language}]}:${reset}"
        echo -e "\t${CVerde}${device}:${reset}${Azul} ${name}${reset}${Amarillo} (${uuid})${punto}"

        # Preguntar si se desea cambiar la conexión predeterminada
        declare -A message_change_default=(
            ["en"]="Do you want to change the default connection"
            ["es"]="¿Desea cambiar la conexión predeterminada"
            ["ca"]="Desitja canviar la connexió predeterminada"
        )
        if ! confirm_action "${CPurpura}${message_change_default[${language}]}?${reset}";then
            conn_networkmanager="${uuid}"
            return 0
        fi
    fi

    # Mensaje para seleccionar una conexión existente
    declare -A message_get_conn_name_nmcli=(
        ["en"]="Please choose the connection you want to modify"
        ["es"]="Por favor, elija la conexión que desea modificar"
        ["ca"]="Per favor, trie la connexió que desitja modificar"
    )

    # Mensaje para crear una nueva conexión
    declare -A message_new_conn_option=(
        ["en"]="Create a new connection"
        ["es"]="Crear una nueva conexión"
        ["ca"]="Crear una nova connexió"
    )

    local cont=1
    local uuids
    declare -A uuid_name=()
    local new

    # Obtener todas las conexiones excepto "lo" (loopback)
    mapfile -t uuids < <(nmcli -t -f UUID,NAME,DEVICE c s | grep -vE ":lo$" 2>/dev/null)
    # Si no hay conexiones existentes, crear una nueva
    if [ "${#uuids[@]}" -eq 0 ];then
        errorLog 29
        create_connection_nmcli
        return 0
    fi

    echo -e "${Blanco}${message_get_conn_name_nmcli[${language}]}?${punto}\n"

    while IFS= read -r line;do
        uuid=$(echo "${line}" | cut -d ":" -f1)
        name=$(echo "${line}" | cut -d ":" -f2)
        uuid_name+=([${cont}]=${uuid})
        echo -e "${CRojo}${cont}${parentesis} ${CAzul}${name}${punto}"
        ((cont++))
    done < <(nmcli -t -f UUID,NAME,DEVICE c s | grep -vE ":lo$" 2>/dev/null )

    new=$((${#uuid_name[@]} + 1))
    echo "---------------------------"
    echo -e "${CRojo}${new}${parentesis} ${CAzul}${message_new_conn_option[${language}]}${punto}"

    while true;do
        read -rp " ·> " name_conn
        if [ -n "${uuid_name[${name_conn}]}" ];then
            conn_networkmanager="${uuid_name[${name_conn}]}"
            return 0
        elif [[ "${name_conn}" -eq "${new}" ]];then
            create_connection_nmcli
            return 0
        else
            errorLog 2 "${new}"
        fi
    done
}

function configure_network_manager(){

    if ! command -v nmcli >/dev/null 2>&1;then
        return 1
    fi

    local type="${1}" # ? manual | dhcp
    local time="${2}" # ? permanent | temporary

    if [ "${type}" == "manual" ];then
        input_valid_ipv4 "new_ip" "private" "skip"
        input_cidr
        input_valid_ipv4 "new_gateway" "private" "skip"
        input_valid_ipv4 "new_dns" "none" "force"

        if [ "${time}" == "permanent" ];then
            nmcli con mod "${conn_networkmanager}" ipv4.address "${new_ip}/${new_cidr}"
            nmcli con mod "${conn_networkmanager}" ipv4.gateway "${new_gateway}"
            nmcli con mod "${conn_networkmanager}" ipv4.method "static"
            nmcli con mod "${conn_networkmanager}" ipv4.dns "${new_dns[*]}"
        elif [ "${time}" == "temporary" ];then
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.address "${new_ip}/${new_cidr}"
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.gateway "${new_gateway}"
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.method "static"
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.dns "${new_dns[*]}"
        fi

    elif [ "${type}" == "dhcp" ];then
        if [ "${time}" == "permanent" ];then
            nmcli con mod "${conn_networkmanager}" ipv4.method "auto"
            nmcli con mod "${conn_networkmanager}" ipv4.dns ""
            nmcli con mod "${conn_networkmanager}" ipv4.gateway ""
            nmcli con mod "${conn_networkmanager}" ipv4.address ""

        elif [ "${time}" == "temporary" ];then
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.method "auto"
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.dns ""
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.gateway ""
            nmcli con mod "${conn_networkmanager}" --temporary ipv4.address ""
        fi

    else
        create_connection_nmcli "${type}"
    fi

    # Aplicar cambios a la conexión y reiniciarla
    tput civis
    nmcli con down "${uuid}" 2>/dev/null
    nmcli con down "${conn_networkmanager}" 2>/dev/null
    nmcli con up "${conn_networkmanager}" 2>/dev/null
    tput cnorm
}


function check_network_interfaces_file(){

    # DE MOMENTO, ES INÚTIL ESTA FUNCIÓN

    local file="/etc/network/interfaces"
    if [ ! -s "${file}" ];then
        errorLog 21 "${file}"
        ((errors++))
        return 1
    elif [ ! -r "${file}" ];then
        errorLog 31 "${file}"
        return 1
    fi
    
    local interfaces
    mapfile -t interfaces < <(basename -a /sys/class/net/*)
    local ip_regex="((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
    
    while read -r line; do

        local cont=0

        for iface in "${interfaces[@]}";do            
            if [[ "${line}" =~ auto\ ${iface} ]];then
                cont=1
                break
            elif [[ "${line}" =~ iface\ ${iface}\ inet\ (static|dhcp|ppp) ]];then
                cont=1
                break
            elif [[ "${line}" =~ iface\ lo\ inet\ loopback ]];then
                cont=1
                break
            elif [[ "${line}" =~ allow-hotplug\ ${iface} ]];then
                cont=1
                break
            elif [[ "${line}" =~ bridge_ports\ ${iface} ]];then
                cont=1
                break
            fi
        done
        if [ "${cont}" -eq 1 ];then
            continue
        fi

        if [[ "${line}" =~ address\ ${ip_regex} ]];then
            continue
        elif [[ "${line}" =~ netmask\ ${ip_regex} ]];then
            continue
        elif [[ "${line}" =~ gateway\ ${ip_regex} ]];then
            continue
        elif [[ "${line}" =~ broadcast\ ${ip_regex} ]];then
            continue
        elif [[ "${line}" =~ dns-nameservers\ ${ip_regex} ]];then
            continue
        elif [[ "${line}" =~ pointopoint\ ${ip_regex} ]];then
            continue
        fi

        # ? WIFI
        if [[ "${line}" =~ wpa-ssid\ .* ]];then
            continue
        elif [[ "${line}" =~ wpa-psk\ .* ]];then
            continue
        fi

        if [[ "${line}" =~ scope\ (global|link|host|site) ]];then
            continue
        fi

        if [[ "${line}" =~ mtu\ [0-9]{2,} ]];then
            continue
        elif [[ "${line}" =~ metric\ [0-9]{2,} ]];then
            continue
        fi

        if [[ "${line}" =~ hwaddress\ (([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}|random) ]];then
            continue
        fi

        if [[ "${line}" =~ bridge_stp\ (on|off) ]];then
            continue
        elif [[ "${line}" =~ bridge_fd\ [0-9]{1,} ]];then
            continue
        elif [[ "${line}" =~ bridge_maxwait\ [0-9]{1,} ]];then
            continue
        fi

        if [[ "${line}" =~ domain\ .* ]];then
            continue
        fi


        errorLog 30 "$(grep -n "${line}" "${file}" | cut -d ":" -f1)" "${file}" "${line}"

    done < <(grep -Ev "^#|source|^$" ${file})
}

detect_screen_resolution
bash_version
check_distros
enter_to_next
display_interfaces
select_interface
check_if_Ethernet_Wifi

echo -e "${CAmarillo}$(format_message_translate "${check_ethernet_wifi[${language}]}" "${interface}" "${mode}")${punto}"
while true;do

    echo -e "\n${S_Purpura}\t\t${translate_want_choose[${language}]}?${reset}\n" 
    echo -e "${Rojo}1${parentesis} ${CVerde}${translate_menu_one[${language}]}${punto}"
    echo -e "${Rojo}2${parentesis} ${CVerde}${translate_menu_two[${language}]}${punto}"
    echo -e "${Rojo}3${parentesis} ${CVerde}${translate_menu_three[${language}]}${reset}${CNegro} (${reset}${NRojo}root${parentesis}${punto}"
    echo -e "${Rojo}4${parentesis} ${CVerde}${translate_menu_four[${language}]}${punto}"
    echo -e "${Rojo}5${parentesis} ${CVerde}${translate_menu_five[${language}]}${punto}"
    echo -e "${Rojo}6${parentesis} ${CVerde}${exit[${language}]}${punto}"
    read -rp " ·> " menu_main
    #menu_main=3
    case "${menu_main}" in
        1) 
            echo -e "\n\t${Blanco}$(format_message_translate "${title_info_network_properties[${language}]}" "${interface}"):${reset}\n"

            # GET NETWORKS VARIABLES            
            get_ipv4 "${interface}"
            get_netmask_ip_ipv4 "${interface}"
            get_class_mask "${IPv4}"
            get_ip_broadcast
            get_gateway
            get_mac
            get_dns_servers

            # NETWORK INFO
            echo -en "${Blanco}IPv4:${reset} ${CCian}${IPv4}${reset}${CRojo}/${reset}${Purpura}${cidr}\t\t"
            echo -e "${Blanco}IP Netmask: ${reset}${CCian}${ip_netmask}${reset}"
            echo -en "${Blanco}${class_netmask[${language}]}: ${reset}${CCian}${class_mask}${reset}\t\t"
            echo -e "${Blanco}Wildcard Mask: ${reset}${CCian}${wildcard_mask}${reset}"
            echo -e "${Blanco}IP Broadcast: ${reset}${CCian}${ip_broadcast}${reset}"
            echo -e "${Blanco}${gateway_message[${language}]}:${reset}${CCian} ${gateway}${reset}"
            echo -e "${Blanco}MAC: ${reset}${CCian}${mac}${reset}"

            # DNS
            echo -e "${Blanco}DNS: ${reset}${CCian}${dns_servers[*]}${reset}"
  
            # Wi-Fi or Ethernet information
            if [ "${mode}" == "Wi-Fi" ];then
                wifi_features
                info_signal_wifi
                check_monitor_wifi
                wifi_security
            else
                get_cable_info
            fi

            echo ""
            get_driver
            echo ""
            check_promisc
            check_if_dhcp_static
            display_public_ip "${@}"
            enter_to_next
        ;;
        2) 
            detect_network_service
            # GET NETWORKS VARIABLES            
            get_ipv4 "${interface}"
            get_netmask_ip_ipv4 "${interface}"
            get_class_mask "${IPv4}"
            get_ip_broadcast
            get_gateway

            get_mac
            get_dns_servers

            # VALIDATION
            if check_validate_IPv4 "${IPv4}" "private";then
                echo -e "${Blanco}$(format_message_translate "${message_IPv4_check_success[${language}]}" "${IPv4}")${punto}"
            fi

            if check_validate_IPv4 "${gateway}" "private";then
                is_same_network "${gateway}" "${IPv4}" "${ip_netmask}"
            fi
            check_plug_cable
            test_gateway
            check_traceroute_hosts
            for server in "${dns_servers[@]}";do
                check_dns "${server}"
            done
            
            check_nsswitch
            check_if_duplicate_ip
            if [ "${mode}" == "Wi-Fi" ];then
                check_radio_wifi
            fi
        ;;
        3)
            detect_network_service
            #! 1º Temporal
                # *Automático 
                # *Manual
            #! 2º Permanente
                # *Automático 
                # *Manual

            while true;do # ? 1º bucle
                echo -e "\n${CPurpura}${message_type_change[${language}]}?${reset}"
                echo -e "\n${Rojo}1${parentesis} ${Verde}Temporal${punto}"
                echo -e "${Rojo}2${parentesis} ${Verde}Permanente${punto}"
                echo -e "${Rojo}3${parentesis} ${Verde}${exit[${language}]}${punto}"
                read -rp " ·> " change_network
                case "${change_network}" in
                    1) # TEMPORAL
                        while true;do
                            # * TEMPORAL → AUTO - MANUAL
                            echo -e "\n${CPurpura}${message_type_method[${language}]}?${reset}\n"
                            echo -e "${Rojo}1${parentesis} ${Verde}Manual${punto}"
                            echo -e "${Rojo}2${parentesis} ${Verde}DHCP${punto}"
                            echo -e "${Rojo}3${parentesis} ${Verde}${exit[${language}]}${punto}"
                            read -rp " ·> " type_network
                            case "${type_network}" in
                                1) # ? TEMPORAL MANUAL
                                    # * DEPENDIENDO DEL SERVICIO, SE CAMBIA DE UNA FORMA U OTRA
                                    case "${name_service}" in
                                        "NetworkManager")
                                            if check_GUI && command -v nm-connection-editor >/dev/null 2>&1;then
                                                if confirm_action "$(format_message_translate "${CPurpura}${message_GUI_networkmanager[${language}]}?${reset}")";then
                                                    tput civis
                                                    nm-connection-editor
                                                    tput cnorm
                                                    break;
                                                fi
                                            fi
                                            
                                            get_conn_name_nmcli
                                            configure_network_manager "manual" "temporary"    
                                        ;;
                                    esac
                                    break
                                ;;
                                2) # ? TEMPORAL AUTOMÁTICA
                                    case "${name_service}" in
                                        "NetworkManager")
                                            if check_GUI && command -v nm-connection-editor >/dev/null 2>&1;then
                                                if confirm_action "$(format_message_translate "${CPurpura}${message_GUI_networkmanager[${language}]}?${reset}")";then
                                                    tput civis
                                                    nm-connection-editor
                                                    tput cnorm
                                                    break;
                                                fi
                                            fi
                                            
                                            get_conn_name_nmcli
                                            configure_network_manager "dhcp" "temporary"
                                        ;;
                                    esac
                                    break
                                ;;
                                3)  # ? SALIR
                                    echo -e "\n${NAmarillo}${exit_script[${language}]}${reset}\n\n"
                                    break
                                ;;
                                *)
                                    errorLog 2 3
                                ;;
                            esac
                        done
                        break # Break para romper el primer while true
                    ;;
                    2) # PERMANENTE
                        while true;do
                            # * PERMANETE → AUTO - MANUAL
                            echo -e "\n${CPurpura}${message_type_method[${language}]}?${reset}\n"
                            echo -e "${Rojo}1${parentesis} ${Verde}Manual${punto}"
                            echo -e "${Rojo}2${parentesis} ${Verde}DHCP${punto}"
                            echo -e "${Rojo}3${parentesis} ${Verde}${exit[${language}]}${punto}"
                            read -rp " ·> " type_network
                            case "${type_network}" in
                                1) # ? PERMANENTE MANUAL
                                    # * DEPENDIENDO DEL SERVICIO, SE CAMBIA DE UNA FORMA U OTRA
                                    case "${name_service}" in
                                        "NetworkManager")
                                            if check_GUI && command -v nm-connection-editor >/dev/null 2>&1;then
                                                if confirm_action "$(format_message_translate "${CPurpura}${message_GUI_networkmanager[${language}]}?${reset}")";then
                                                    tput civis
                                                    nm-connection-editor
                                                    tput cnorm
                                                    break;
                                                fi
                                            fi
                                            
                                            get_conn_name_nmcli
                                            configure_network_manager "manual" "permanent"
                                            
                                        ;;
                                    esac
                                    break
                                ;;
                                2) # ? PERMANENTE AUTOMÁTICA
                                    case "${name_service}" in
                                        "NetworkManager")
                                            if check_GUI && command -v nm-connection-editor >/dev/null 2>&1;then
                                                if confirm_action "$(format_message_translate "${CPurpura}${message_GUI_networkmanager[${language}]}?${reset}")";then
                                                    tput civis
                                                    nm-connection-editor
                                                    tput cnorm
                                                    break;
                                                fi
                                            fi
                                            
                                            get_conn_name_nmcli
                                            configure_network_manager "dhcp" "permanent"
                                        ;;
                                    esac
                                    break
                                ;;
                                3)  # ? SALIR
                                    echo -e "\n${NAmarillo}${exit_script[${language}]}${reset}\n\n"
                                    break
                                ;;
                                *)
                                    errorLog 2 3
                                ;;
                            esac
                        done
                        break # Break para romper el primer while true
                    ;;
                    3)  # SALIR
                        echo -e "\n${NAmarillo}${exit_script[${language}]}${reset}\n\n"
                        break
                    ;;
                    *)
                        errorLog 2 3
                    ;;
                esac
            done
        ;;
        4) 
            display_interfaces
            select_interface
        ;;
        5)
            echo -e "\n"
            display_select_language 1
        ;;
        6) 
            echo -e "\n${NAmarillo}${exit_script[${language}]}${reset}\n\n"
            exit 0
        ;;
        *) 
            errorLog 2 5
        ;;
    esac
done