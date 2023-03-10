PGDMP                         z            netbox    12.11    12.11 ?              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    20621    netbox    DATABASE     x   CREATE DATABASE netbox WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE netbox;
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO netbox;
                   postgres    false    3            ?            1259    20622 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    netbox    false            ?            1259    20625    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          netbox    false    202                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          netbox    false    203            ?            1259    20627    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    netbox    false            ?            1259    20630    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          netbox    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          netbox    false    205            ?            1259    20632    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    netbox    false            ?            1259    20635    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          netbox    false    206                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          netbox    false    207            ?            1259    20637 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    netbox    false            ?            1259    20643    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    netbox    false            ?            1259    20646    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          netbox    false    209                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          netbox    false    210            ?            1259    20648    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          netbox    false    208                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          netbox    false    211            ?            1259    20650    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    netbox    false            ?            1259    20653 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          netbox    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          netbox    false    213            ?            1259    20655    circuits_circuit    TABLE       CREATE TABLE public.circuits_circuit (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    cid character varying(100) NOT NULL,
    install_date date,
    commit_rate integer,
    comments text NOT NULL,
    provider_id integer NOT NULL,
    type_id integer NOT NULL,
    tenant_id integer,
    description character varying(200) NOT NULL,
    status character varying(50) NOT NULL,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT circuits_circuit_commit_rate_check CHECK ((commit_rate >= 0))
);
 $   DROP TABLE public.circuits_circuit;
       public         heap    netbox    false            ?            1259    20662    circuits_circuit_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.circuits_circuit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.circuits_circuit_id_seq;
       public          netbox    false    214                       0    0    circuits_circuit_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.circuits_circuit_id_seq OWNED BY public.circuits_circuit.id;
          public          netbox    false    215            ?            1259    20664    circuits_circuittermination    TABLE     ?  CREATE TABLE public.circuits_circuittermination (
    id integer NOT NULL,
    term_side character varying(1) NOT NULL,
    port_speed integer,
    upstream_speed integer,
    xconnect_id character varying(50) NOT NULL,
    pp_info character varying(100) NOT NULL,
    circuit_id integer NOT NULL,
    site_id integer NOT NULL,
    cable_id integer,
    description character varying(200) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT circuits_circuittermination__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT circuits_circuittermination_port_speed_check CHECK ((port_speed >= 0)),
    CONSTRAINT circuits_circuittermination_upstream_speed_check CHECK ((upstream_speed >= 0))
);
 /   DROP TABLE public.circuits_circuittermination;
       public         heap    netbox    false            ?            1259    20670 "   circuits_circuittermination_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.circuits_circuittermination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.circuits_circuittermination_id_seq;
       public          netbox    false    216                       0    0 "   circuits_circuittermination_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.circuits_circuittermination_id_seq OWNED BY public.circuits_circuittermination.id;
          public          netbox    false    217            ?            1259    20672    circuits_circuittype    TABLE       CREATE TABLE public.circuits_circuittype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 (   DROP TABLE public.circuits_circuittype;
       public         heap    netbox    false            ?            1259    20675    circuits_circuittype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.circuits_circuittype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.circuits_circuittype_id_seq;
       public          netbox    false    218                       0    0    circuits_circuittype_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.circuits_circuittype_id_seq OWNED BY public.circuits_circuittype.id;
          public          netbox    false    219            ?            1259    20677    circuits_provider    TABLE     ?  CREATE TABLE public.circuits_provider (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    asn bigint,
    account character varying(30) NOT NULL,
    portal_url character varying(200) NOT NULL,
    noc_contact text NOT NULL,
    admin_contact text NOT NULL,
    comments text NOT NULL,
    custom_field_data jsonb NOT NULL
);
 %   DROP TABLE public.circuits_provider;
       public         heap    netbox    false            ?            1259    20683    circuits_provider_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.circuits_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.circuits_provider_id_seq;
       public          netbox    false    220                       0    0    circuits_provider_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.circuits_provider_id_seq OWNED BY public.circuits_provider.id;
          public          netbox    false    221            ?            1259    20685 
   dcim_cable    TABLE       CREATE TABLE public.dcim_cable (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    termination_a_id integer NOT NULL,
    termination_b_id integer NOT NULL,
    type character varying(50) NOT NULL,
    status character varying(50) NOT NULL,
    label character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    length smallint,
    length_unit character varying(50) NOT NULL,
    _abs_length numeric(10,4),
    termination_a_type_id integer NOT NULL,
    termination_b_type_id integer NOT NULL,
    _termination_a_device_id integer,
    _termination_b_device_id integer,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT dcim_cable_length_check CHECK ((length >= 0)),
    CONSTRAINT dcim_cable_termination_a_id_check CHECK ((termination_a_id >= 0)),
    CONSTRAINT dcim_cable_termination_b_id_check CHECK ((termination_b_id >= 0))
);
    DROP TABLE public.dcim_cable;
       public         heap    netbox    false            ?            1259    20694    dcim_cable_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_cable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dcim_cable_id_seq;
       public          netbox    false    222                       0    0    dcim_cable_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dcim_cable_id_seq OWNED BY public.dcim_cable.id;
          public          netbox    false    223            ?            1259    20696    dcim_cablepath    TABLE     ?  CREATE TABLE public.dcim_cablepath (
    id integer NOT NULL,
    origin_id integer NOT NULL,
    destination_id integer,
    path character varying(40)[] NOT NULL,
    is_active boolean NOT NULL,
    is_split boolean NOT NULL,
    destination_type_id integer,
    origin_type_id integer NOT NULL,
    CONSTRAINT dcim_cablepath_destination_id_check CHECK ((destination_id >= 0)),
    CONSTRAINT dcim_cablepath_origin_id_check CHECK ((origin_id >= 0))
);
 "   DROP TABLE public.dcim_cablepath;
       public         heap    netbox    false            ?            1259    20704    dcim_cablepath_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_cablepath_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_cablepath_id_seq;
       public          netbox    false    224                       0    0    dcim_cablepath_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_cablepath_id_seq OWNED BY public.dcim_cablepath.id;
          public          netbox    false    225            ?            1259    20706    dcim_consoleport    TABLE     ?  CREATE TABLE public.dcim_consoleport (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    cable_id integer,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_consoleport__cable_peer_id_check CHECK ((_cable_peer_id >= 0))
);
 $   DROP TABLE public.dcim_consoleport;
       public         heap    netbox    false            ?            1259    20710    dcim_consoleport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_consoleport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dcim_consoleport_id_seq;
       public          netbox    false    226                       0    0    dcim_consoleport_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dcim_consoleport_id_seq OWNED BY public.dcim_consoleport.id;
          public          netbox    false    227            ?            1259    20712    dcim_consoleporttemplate    TABLE     G  CREATE TABLE public.dcim_consoleporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 ,   DROP TABLE public.dcim_consoleporttemplate;
       public         heap    netbox    false            ?            1259    20715    dcim_consoleporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_consoleporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dcim_consoleporttemplate_id_seq;
       public          netbox    false    228                       0    0    dcim_consoleporttemplate_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dcim_consoleporttemplate_id_seq OWNED BY public.dcim_consoleporttemplate.id;
          public          netbox    false    229            ?            1259    20717    dcim_consoleserverport    TABLE       CREATE TABLE public.dcim_consoleserverport (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    cable_id integer,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_consoleserverport__cable_peer_id_check CHECK ((_cable_peer_id >= 0))
);
 *   DROP TABLE public.dcim_consoleserverport;
       public         heap    netbox    false            ?            1259    20721    dcim_consoleserverport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_consoleserverport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_consoleserverport_id_seq;
       public          netbox    false    230                       0    0    dcim_consoleserverport_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_consoleserverport_id_seq OWNED BY public.dcim_consoleserverport.id;
          public          netbox    false    231            ?            1259    20723    dcim_consoleserverporttemplate    TABLE     M  CREATE TABLE public.dcim_consoleserverporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 2   DROP TABLE public.dcim_consoleserverporttemplate;
       public         heap    netbox    false            ?            1259    20726 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_consoleserverporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.dcim_consoleserverporttemplate_id_seq;
       public          netbox    false    232                       0    0 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.dcim_consoleserverporttemplate_id_seq OWNED BY public.dcim_consoleserverporttemplate.id;
          public          netbox    false    233            ?            1259    20728    dcim_device    TABLE       CREATE TABLE public.dcim_device (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(64),
    serial character varying(50) NOT NULL,
    "position" smallint,
    face character varying(50) NOT NULL,
    status character varying(50) NOT NULL,
    comments text NOT NULL,
    device_role_id integer NOT NULL,
    device_type_id integer NOT NULL,
    platform_id integer,
    rack_id integer,
    primary_ip4_id integer,
    primary_ip6_id integer,
    tenant_id integer,
    asset_tag character varying(50),
    site_id integer NOT NULL,
    cluster_id integer,
    virtual_chassis_id integer,
    vc_position smallint,
    vc_priority smallint,
    local_context_data jsonb,
    _name character varying(100),
    custom_field_data jsonb NOT NULL,
    CONSTRAINT dcim_device_position_check CHECK (("position" >= 0)),
    CONSTRAINT dcim_device_vc_position_check CHECK ((vc_position >= 0)),
    CONSTRAINT dcim_device_vc_priority_check CHECK ((vc_priority >= 0))
);
    DROP TABLE public.dcim_device;
       public         heap    netbox    false            ?            1259    20737    dcim_device_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_device_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_device_id_seq;
       public          netbox    false    234                       0    0    dcim_device_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dcim_device_id_seq OWNED BY public.dcim_device.id;
          public          netbox    false    235            ?            1259    20739    dcim_devicebay    TABLE     0  CREATE TABLE public.dcim_devicebay (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    installed_device_id integer,
    description character varying(200) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL
);
 "   DROP TABLE public.dcim_devicebay;
       public         heap    netbox    false            ?            1259    20742    dcim_devicebay_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_devicebay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_devicebay_id_seq;
       public          netbox    false    236                       0    0    dcim_devicebay_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_devicebay_id_seq OWNED BY public.dcim_devicebay.id;
          public          netbox    false    237            ?            1259    20744    dcim_devicebaytemplate    TABLE       CREATE TABLE public.dcim_devicebaytemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 *   DROP TABLE public.dcim_devicebaytemplate;
       public         heap    netbox    false            ?            1259    20747    dcim_devicebaytemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_devicebaytemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_devicebaytemplate_id_seq;
       public          netbox    false    238                       0    0    dcim_devicebaytemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_devicebaytemplate_id_seq OWNED BY public.dcim_devicebaytemplate.id;
          public          netbox    false    239            ?            1259    20749    dcim_devicerole    TABLE     J  CREATE TABLE public.dcim_devicerole (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    vm_role boolean NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 #   DROP TABLE public.dcim_devicerole;
       public         heap    netbox    false            ?            1259    20752    dcim_devicerole_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_devicerole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_devicerole_id_seq;
       public          netbox    false    240                        0    0    dcim_devicerole_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_devicerole_id_seq OWNED BY public.dcim_devicerole.id;
          public          netbox    false    241            ?            1259    20754    dcim_devicetype    TABLE     ?  CREATE TABLE public.dcim_devicetype (
    id integer NOT NULL,
    model character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    u_height smallint NOT NULL,
    is_full_depth boolean NOT NULL,
    manufacturer_id integer NOT NULL,
    subdevice_role character varying(50) NOT NULL,
    part_number character varying(50) NOT NULL,
    comments text NOT NULL,
    created date,
    last_updated timestamp with time zone,
    front_image character varying(100) NOT NULL,
    rear_image character varying(100) NOT NULL,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT dcim_devicetype_u_height_check CHECK ((u_height >= 0))
);
 #   DROP TABLE public.dcim_devicetype;
       public         heap    netbox    false            ?            1259    20761    dcim_devicetype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_devicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_devicetype_id_seq;
       public          netbox    false    242            !           0    0    dcim_devicetype_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_devicetype_id_seq OWNED BY public.dcim_devicetype.id;
          public          netbox    false    243            ?            1259    20763    dcim_frontport    TABLE     ?  CREATE TABLE public.dcim_frontport (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    rear_port_position smallint NOT NULL,
    description character varying(200) NOT NULL,
    device_id integer NOT NULL,
    rear_port_id integer NOT NULL,
    cable_id integer,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    CONSTRAINT dcim_frontport__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT dcim_frontport_rear_port_position_check CHECK ((rear_port_position >= 0))
);
 "   DROP TABLE public.dcim_frontport;
       public         heap    netbox    false            ?            1259    20768    dcim_frontport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_frontport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_frontport_id_seq;
       public          netbox    false    244            "           0    0    dcim_frontport_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_frontport_id_seq OWNED BY public.dcim_frontport.id;
          public          netbox    false    245            ?            1259    20770    dcim_frontporttemplate    TABLE     ?  CREATE TABLE public.dcim_frontporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    rear_port_position smallint NOT NULL,
    device_type_id integer NOT NULL,
    rear_port_id integer NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT dcim_frontporttemplate_rear_port_position_check CHECK ((rear_port_position >= 0))
);
 *   DROP TABLE public.dcim_frontporttemplate;
       public         heap    netbox    false            ?            1259    20774    dcim_frontporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_frontporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_frontporttemplate_id_seq;
       public          netbox    false    246            #           0    0    dcim_frontporttemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_frontporttemplate_id_seq OWNED BY public.dcim_frontporttemplate.id;
          public          netbox    false    247            ?            1259    20776    dcim_interface    TABLE     ?  CREATE TABLE public.dcim_interface (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    mgmt_only boolean NOT NULL,
    description character varying(200) NOT NULL,
    device_id integer NOT NULL,
    mac_address macaddr,
    lag_id integer,
    enabled boolean NOT NULL,
    mtu integer,
    mode character varying(50) NOT NULL,
    untagged_vlan_id integer,
    cable_id integer,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_interface__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT dcim_interface_mtu_check CHECK ((mtu >= 0))
);
 "   DROP TABLE public.dcim_interface;
       public         heap    netbox    false            ?            1259    20784    dcim_interface_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_interface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_interface_id_seq;
       public          netbox    false    248            $           0    0    dcim_interface_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_interface_id_seq OWNED BY public.dcim_interface.id;
          public          netbox    false    249            ?            1259    20786    dcim_interface_tagged_vlans    TABLE     ?   CREATE TABLE public.dcim_interface_tagged_vlans (
    id integer NOT NULL,
    interface_id integer NOT NULL,
    vlan_id integer NOT NULL
);
 /   DROP TABLE public.dcim_interface_tagged_vlans;
       public         heap    netbox    false            ?            1259    20789 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_interface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.dcim_interface_tagged_vlans_id_seq;
       public          netbox    false    250            %           0    0 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.dcim_interface_tagged_vlans_id_seq OWNED BY public.dcim_interface_tagged_vlans.id;
          public          netbox    false    251            ?            1259    20791    dcim_interfacetemplate    TABLE     e  CREATE TABLE public.dcim_interfacetemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    mgmt_only boolean NOT NULL,
    device_type_id integer NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 *   DROP TABLE public.dcim_interfacetemplate;
       public         heap    netbox    false            ?            1259    20794    dcim_interfacetemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_interfacetemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_interfacetemplate_id_seq;
       public          netbox    false    252            &           0    0    dcim_interfacetemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_interfacetemplate_id_seq OWNED BY public.dcim_interfacetemplate.id;
          public          netbox    false    253            ?            1259    20796    dcim_inventoryitem    TABLE     a  CREATE TABLE public.dcim_inventoryitem (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    part_id character varying(50) NOT NULL,
    serial character varying(50) NOT NULL,
    discovered boolean NOT NULL,
    device_id integer NOT NULL,
    parent_id integer,
    manufacturer_id integer,
    asset_tag character varying(50),
    description character varying(200) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    level integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    CONSTRAINT dcim_inventoryitem_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_inventoryitem_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_inventoryitem_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_inventoryitem_tree_id_check CHECK ((tree_id >= 0))
);
 &   DROP TABLE public.dcim_inventoryitem;
       public         heap    netbox    false            ?            1259    20806    dcim_manufacturer    TABLE       CREATE TABLE public.dcim_manufacturer (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 %   DROP TABLE public.dcim_manufacturer;
       public         heap    netbox    false                        1259    20809    dcim_manufacturer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dcim_manufacturer_id_seq;
       public          netbox    false    255            '           0    0    dcim_manufacturer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.dcim_manufacturer_id_seq OWNED BY public.dcim_manufacturer.id;
          public          netbox    false    256                       1259    20811    dcim_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_module_id_seq;
       public          netbox    false    254            (           0    0    dcim_module_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.dcim_module_id_seq OWNED BY public.dcim_inventoryitem.id;
          public          netbox    false    257                       1259    20813    dcim_platform    TABLE     g  CREATE TABLE public.dcim_platform (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    napalm_driver character varying(50) NOT NULL,
    manufacturer_id integer,
    created date,
    last_updated timestamp with time zone,
    napalm_args jsonb,
    description character varying(200) NOT NULL
);
 !   DROP TABLE public.dcim_platform;
       public         heap    netbox    false                       1259    20819    dcim_platform_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_platform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_platform_id_seq;
       public          netbox    false    258            )           0    0    dcim_platform_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_platform_id_seq OWNED BY public.dcim_platform.id;
          public          netbox    false    259                       1259    20821    dcim_powerfeed    TABLE       CREATE TABLE public.dcim_powerfeed (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    status character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    supply character varying(50) NOT NULL,
    phase character varying(50) NOT NULL,
    voltage smallint NOT NULL,
    amperage smallint NOT NULL,
    max_utilization smallint NOT NULL,
    available_power integer NOT NULL,
    comments text NOT NULL,
    cable_id integer,
    power_panel_id integer NOT NULL,
    rack_id integer,
    custom_field_data jsonb NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_powerfeed__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT dcim_powerfeed_amperage_check CHECK ((amperage >= 0)),
    CONSTRAINT dcim_powerfeed_available_power_check CHECK ((available_power >= 0)),
    CONSTRAINT dcim_powerfeed_max_utilization_check CHECK ((max_utilization >= 0))
);
 "   DROP TABLE public.dcim_powerfeed;
       public         heap    netbox    false                       1259    20831    dcim_powerfeed_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_powerfeed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_powerfeed_id_seq;
       public          netbox    false    260            *           0    0    dcim_powerfeed_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_powerfeed_id_seq OWNED BY public.dcim_powerfeed.id;
          public          netbox    false    261                       1259    20833    dcim_poweroutlet    TABLE     ?  CREATE TABLE public.dcim_poweroutlet (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    cable_id integer,
    description character varying(200) NOT NULL,
    feed_leg character varying(50) NOT NULL,
    power_port_id integer,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_poweroutlet__cable_peer_id_check CHECK ((_cable_peer_id >= 0))
);
 $   DROP TABLE public.dcim_poweroutlet;
       public         heap    netbox    false                       1259    20840    dcim_poweroutlet_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_poweroutlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dcim_poweroutlet_id_seq;
       public          netbox    false    262            +           0    0    dcim_poweroutlet_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dcim_poweroutlet_id_seq OWNED BY public.dcim_poweroutlet.id;
          public          netbox    false    263                       1259    20842    dcim_poweroutlettemplate    TABLE     ?  CREATE TABLE public.dcim_poweroutlettemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    feed_leg character varying(50) NOT NULL,
    power_port_id integer,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 ,   DROP TABLE public.dcim_poweroutlettemplate;
       public         heap    netbox    false            	           1259    20848    dcim_poweroutlettemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_poweroutlettemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dcim_poweroutlettemplate_id_seq;
       public          netbox    false    264            ,           0    0    dcim_poweroutlettemplate_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dcim_poweroutlettemplate_id_seq OWNED BY public.dcim_poweroutlettemplate.id;
          public          netbox    false    265            
           1259    20850    dcim_powerpanel    TABLE       CREATE TABLE public.dcim_powerpanel (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    rack_group_id integer,
    site_id integer NOT NULL,
    custom_field_data jsonb NOT NULL
);
 #   DROP TABLE public.dcim_powerpanel;
       public         heap    netbox    false                       1259    20856    dcim_powerpanel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_powerpanel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_powerpanel_id_seq;
       public          netbox    false    266            -           0    0    dcim_powerpanel_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_powerpanel_id_seq OWNED BY public.dcim_powerpanel.id;
          public          netbox    false    267                       1259    20858    dcim_powerport    TABLE     ?  CREATE TABLE public.dcim_powerport (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    cable_id integer,
    description character varying(200) NOT NULL,
    allocated_draw smallint,
    maximum_draw smallint,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    _path_id integer,
    CONSTRAINT dcim_powerport__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT dcim_powerport_allocated_draw_check CHECK ((allocated_draw >= 0)),
    CONSTRAINT dcim_powerport_maximum_draw_check CHECK ((maximum_draw >= 0))
);
 "   DROP TABLE public.dcim_powerport;
       public         heap    netbox    false                       1259    20864    dcim_powerport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_powerport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_powerport_id_seq;
       public          netbox    false    268            .           0    0    dcim_powerport_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_powerport_id_seq OWNED BY public.dcim_powerport.id;
          public          netbox    false    269                       1259    20866    dcim_powerporttemplate    TABLE     -  CREATE TABLE public.dcim_powerporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    allocated_draw smallint,
    maximum_draw smallint,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT dcim_powerporttemplate_allocated_draw_check CHECK ((allocated_draw >= 0)),
    CONSTRAINT dcim_powerporttemplate_maximum_draw_check CHECK ((maximum_draw >= 0))
);
 *   DROP TABLE public.dcim_powerporttemplate;
       public         heap    netbox    false                       1259    20871    dcim_powerporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_powerporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_powerporttemplate_id_seq;
       public          netbox    false    270            /           0    0    dcim_powerporttemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_powerporttemplate_id_seq OWNED BY public.dcim_powerporttemplate.id;
          public          netbox    false    271                       1259    20873 	   dcim_rack    TABLE       CREATE TABLE public.dcim_rack (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    facility_id character varying(50),
    u_height smallint NOT NULL,
    comments text NOT NULL,
    group_id integer,
    site_id integer NOT NULL,
    tenant_id integer,
    type character varying(50) NOT NULL,
    width smallint NOT NULL,
    role_id integer,
    desc_units boolean NOT NULL,
    serial character varying(50) NOT NULL,
    status character varying(50) NOT NULL,
    asset_tag character varying(50),
    outer_depth smallint,
    outer_unit character varying(50) NOT NULL,
    outer_width smallint,
    _name character varying(100) NOT NULL,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT dcim_rack_outer_depth_check CHECK ((outer_depth >= 0)),
    CONSTRAINT dcim_rack_outer_width_check CHECK ((outer_width >= 0)),
    CONSTRAINT dcim_rack_u_height_check CHECK ((u_height >= 0)),
    CONSTRAINT dcim_rack_width_check CHECK ((width >= 0))
);
    DROP TABLE public.dcim_rack;
       public         heap    netbox    false                       1259    20883    dcim_rack_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dcim_rack_id_seq;
       public          netbox    false    272            0           0    0    dcim_rack_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dcim_rack_id_seq OWNED BY public.dcim_rack.id;
          public          netbox    false    273                       1259    20885    dcim_rackgroup    TABLE     ?  CREATE TABLE public.dcim_rackgroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    site_id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    parent_id integer,
    level integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT dcim_rackgroup_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_rackgroup_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_rackgroup_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_rackgroup_tree_id_check CHECK ((tree_id >= 0))
);
 "   DROP TABLE public.dcim_rackgroup;
       public         heap    netbox    false                       1259    20892    dcim_rackgroup_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rackgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_rackgroup_id_seq;
       public          netbox    false    274            1           0    0    dcim_rackgroup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_rackgroup_id_seq OWNED BY public.dcim_rackgroup.id;
          public          netbox    false    275                       1259    20894    dcim_rackreservation    TABLE     L  CREATE TABLE public.dcim_rackreservation (
    id integer NOT NULL,
    units smallint[] NOT NULL,
    created date,
    description character varying(200) NOT NULL,
    rack_id integer NOT NULL,
    user_id integer NOT NULL,
    tenant_id integer,
    last_updated timestamp with time zone,
    custom_field_data jsonb NOT NULL
);
 (   DROP TABLE public.dcim_rackreservation;
       public         heap    netbox    false                       1259    20900    dcim_rackreservation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rackreservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.dcim_rackreservation_id_seq;
       public          netbox    false    276            2           0    0    dcim_rackreservation_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.dcim_rackreservation_id_seq OWNED BY public.dcim_rackreservation.id;
          public          netbox    false    277                       1259    20902    dcim_rackrole    TABLE     *  CREATE TABLE public.dcim_rackrole (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 !   DROP TABLE public.dcim_rackrole;
       public         heap    netbox    false                       1259    20905    dcim_rackrole_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rackrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_rackrole_id_seq;
       public          netbox    false    278            3           0    0    dcim_rackrole_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_rackrole_id_seq OWNED BY public.dcim_rackrole.id;
          public          netbox    false    279                       1259    20907    dcim_rearport    TABLE     C  CREATE TABLE public.dcim_rearport (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    positions smallint NOT NULL,
    description character varying(200) NOT NULL,
    device_id integer NOT NULL,
    cable_id integer,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    _cable_peer_id integer,
    _cable_peer_type_id integer,
    CONSTRAINT dcim_rearport__cable_peer_id_check CHECK ((_cable_peer_id >= 0)),
    CONSTRAINT dcim_rearport_positions_check CHECK ((positions >= 0))
);
 !   DROP TABLE public.dcim_rearport;
       public         heap    netbox    false                       1259    20912    dcim_rearport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rearport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_rearport_id_seq;
       public          netbox    false    280            4           0    0    dcim_rearport_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_rearport_id_seq OWNED BY public.dcim_rearport.id;
          public          netbox    false    281                       1259    20914    dcim_rearporttemplate    TABLE     ?  CREATE TABLE public.dcim_rearporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(50) NOT NULL,
    positions smallint NOT NULL,
    device_type_id integer NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT dcim_rearporttemplate_positions_check CHECK ((positions >= 0))
);
 )   DROP TABLE public.dcim_rearporttemplate;
       public         heap    netbox    false                       1259    20918    dcim_rearporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_rearporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dcim_rearporttemplate_id_seq;
       public          netbox    false    282            5           0    0    dcim_rearporttemplate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dcim_rearporttemplate_id_seq OWNED BY public.dcim_rearporttemplate.id;
          public          netbox    false    283                       1259    20920    dcim_region    TABLE     w  CREATE TABLE public.dcim_region (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL,
    CONSTRAINT dcim_region_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_region_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_region_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_region_tree_id_check CHECK ((tree_id >= 0))
);
    DROP TABLE public.dcim_region;
       public         heap    netbox    false                       1259    20927    dcim_region_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_region_id_seq;
       public          netbox    false    284            6           0    0    dcim_region_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dcim_region_id_seq OWNED BY public.dcim_region.id;
          public          netbox    false    285                       1259    20929 	   dcim_site    TABLE     g  CREATE TABLE public.dcim_site (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    facility character varying(50) NOT NULL,
    asn bigint,
    physical_address character varying(200) NOT NULL,
    shipping_address character varying(200) NOT NULL,
    comments text NOT NULL,
    tenant_id integer,
    contact_email character varying(254) NOT NULL,
    contact_name character varying(50) NOT NULL,
    contact_phone character varying(20) NOT NULL,
    region_id integer,
    description character varying(200) NOT NULL,
    status character varying(50) NOT NULL,
    time_zone character varying(63) NOT NULL,
    latitude numeric(8,6),
    longitude numeric(9,6),
    _name character varying(100) NOT NULL,
    custom_field_data jsonb NOT NULL
);
    DROP TABLE public.dcim_site;
       public         heap    netbox    false                       1259    20935    dcim_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dcim_site_id_seq;
       public          netbox    false    286            7           0    0    dcim_site_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dcim_site_id_seq OWNED BY public.dcim_site.id;
          public          netbox    false    287                        1259    20937    dcim_virtualchassis    TABLE       CREATE TABLE public.dcim_virtualchassis (
    id integer NOT NULL,
    domain character varying(30) NOT NULL,
    master_id integer,
    created date,
    last_updated timestamp with time zone,
    name character varying(64) NOT NULL,
    custom_field_data jsonb NOT NULL
);
 '   DROP TABLE public.dcim_virtualchassis;
       public         heap    netbox    false            !           1259    20943    dcim_virtualchassis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dcim_virtualchassis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dcim_virtualchassis_id_seq;
       public          netbox    false    288            8           0    0    dcim_virtualchassis_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dcim_virtualchassis_id_seq OWNED BY public.dcim_virtualchassis.id;
          public          netbox    false    289            "           1259    20945    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    netbox    false            #           1259    20952    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          netbox    false    290            9           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          netbox    false    291            $           1259    20954    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    netbox    false            %           1259    20957    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          netbox    false    292            :           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          netbox    false    293            &           1259    20959    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    netbox    false            '           1259    20965    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          netbox    false    294            ;           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          netbox    false    295            (           1259    20967    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    netbox    false            )           1259    20973    extras_configcontext    TABLE     }  CREATE TABLE public.extras_configcontext (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    weight smallint NOT NULL,
    description character varying(200) NOT NULL,
    is_active boolean NOT NULL,
    data jsonb NOT NULL,
    created date,
    last_updated timestamp with time zone,
    CONSTRAINT extras_configcontext_weight_check CHECK ((weight >= 0))
);
 (   DROP TABLE public.extras_configcontext;
       public         heap    netbox    false            *           1259    20980 #   extras_configcontext_cluster_groups    TABLE     ?   CREATE TABLE public.extras_configcontext_cluster_groups (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    clustergroup_id integer NOT NULL
);
 7   DROP TABLE public.extras_configcontext_cluster_groups;
       public         heap    netbox    false            +           1259    20983 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.extras_configcontext_cluster_groups_id_seq;
       public          netbox    false    298            <           0    0 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.extras_configcontext_cluster_groups_id_seq OWNED BY public.extras_configcontext_cluster_groups.id;
          public          netbox    false    299            ,           1259    20985    extras_configcontext_clusters    TABLE     ?   CREATE TABLE public.extras_configcontext_clusters (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    cluster_id integer NOT NULL
);
 1   DROP TABLE public.extras_configcontext_clusters;
       public         heap    netbox    false            -           1259    20988 $   extras_configcontext_clusters_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.extras_configcontext_clusters_id_seq;
       public          netbox    false    300            =           0    0 $   extras_configcontext_clusters_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.extras_configcontext_clusters_id_seq OWNED BY public.extras_configcontext_clusters.id;
          public          netbox    false    301            .           1259    20990    extras_configcontext_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.extras_configcontext_id_seq;
       public          netbox    false    297            >           0    0    extras_configcontext_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.extras_configcontext_id_seq OWNED BY public.extras_configcontext.id;
          public          netbox    false    302            /           1259    20992    extras_configcontext_platforms    TABLE     ?   CREATE TABLE public.extras_configcontext_platforms (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    platform_id integer NOT NULL
);
 2   DROP TABLE public.extras_configcontext_platforms;
       public         heap    netbox    false            0           1259    20995 %   extras_configcontext_platforms_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.extras_configcontext_platforms_id_seq;
       public          netbox    false    303            ?           0    0 %   extras_configcontext_platforms_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.extras_configcontext_platforms_id_seq OWNED BY public.extras_configcontext_platforms.id;
          public          netbox    false    304            1           1259    20997    extras_configcontext_regions    TABLE     ?   CREATE TABLE public.extras_configcontext_regions (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    region_id integer NOT NULL
);
 0   DROP TABLE public.extras_configcontext_regions;
       public         heap    netbox    false            2           1259    21000 #   extras_configcontext_regions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.extras_configcontext_regions_id_seq;
       public          netbox    false    305            @           0    0 #   extras_configcontext_regions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.extras_configcontext_regions_id_seq OWNED BY public.extras_configcontext_regions.id;
          public          netbox    false    306            3           1259    21002    extras_configcontext_roles    TABLE     ?   CREATE TABLE public.extras_configcontext_roles (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    devicerole_id integer NOT NULL
);
 .   DROP TABLE public.extras_configcontext_roles;
       public         heap    netbox    false            4           1259    21005 !   extras_configcontext_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.extras_configcontext_roles_id_seq;
       public          netbox    false    307            A           0    0 !   extras_configcontext_roles_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.extras_configcontext_roles_id_seq OWNED BY public.extras_configcontext_roles.id;
          public          netbox    false    308            5           1259    21007    extras_configcontext_sites    TABLE     ?   CREATE TABLE public.extras_configcontext_sites (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    site_id integer NOT NULL
);
 .   DROP TABLE public.extras_configcontext_sites;
       public         heap    netbox    false            6           1259    21010 !   extras_configcontext_sites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.extras_configcontext_sites_id_seq;
       public          netbox    false    309            B           0    0 !   extras_configcontext_sites_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.extras_configcontext_sites_id_seq OWNED BY public.extras_configcontext_sites.id;
          public          netbox    false    310            7           1259    21012    extras_configcontext_tags    TABLE     ?   CREATE TABLE public.extras_configcontext_tags (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tag_id integer NOT NULL
);
 -   DROP TABLE public.extras_configcontext_tags;
       public         heap    netbox    false            8           1259    21015     extras_configcontext_tags_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.extras_configcontext_tags_id_seq;
       public          netbox    false    311            C           0    0     extras_configcontext_tags_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.extras_configcontext_tags_id_seq OWNED BY public.extras_configcontext_tags.id;
          public          netbox    false    312            9           1259    21017 "   extras_configcontext_tenant_groups    TABLE     ?   CREATE TABLE public.extras_configcontext_tenant_groups (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tenantgroup_id integer NOT NULL
);
 6   DROP TABLE public.extras_configcontext_tenant_groups;
       public         heap    netbox    false            :           1259    21020 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_tenant_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.extras_configcontext_tenant_groups_id_seq;
       public          netbox    false    313            D           0    0 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.extras_configcontext_tenant_groups_id_seq OWNED BY public.extras_configcontext_tenant_groups.id;
          public          netbox    false    314            ;           1259    21022    extras_configcontext_tenants    TABLE     ?   CREATE TABLE public.extras_configcontext_tenants (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tenant_id integer NOT NULL
);
 0   DROP TABLE public.extras_configcontext_tenants;
       public         heap    netbox    false            <           1259    21025 #   extras_configcontext_tenants_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_configcontext_tenants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.extras_configcontext_tenants_id_seq;
       public          netbox    false    315            E           0    0 #   extras_configcontext_tenants_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.extras_configcontext_tenants_id_seq OWNED BY public.extras_configcontext_tenants.id;
          public          netbox    false    316            =           1259    21027    extras_customfield    TABLE       CREATE TABLE public.extras_customfield (
    id integer NOT NULL,
    type character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    label character varying(50) NOT NULL,
    description character varying(200) NOT NULL,
    required boolean NOT NULL,
    weight smallint NOT NULL,
    filter_logic character varying(50) NOT NULL,
    choices character varying(100)[],
    "default" jsonb,
    validation_maximum integer,
    validation_minimum integer,
    validation_regex character varying(500) NOT NULL,
    CONSTRAINT extras_customfield_validation_maximum_check CHECK ((validation_maximum >= 0)),
    CONSTRAINT extras_customfield_validation_minimum_check CHECK ((validation_minimum >= 0)),
    CONSTRAINT extras_customfield_weight_check CHECK ((weight >= 0))
);
 &   DROP TABLE public.extras_customfield;
       public         heap    netbox    false            >           1259    21036     extras_customfield_content_types    TABLE     ?   CREATE TABLE public.extras_customfield_content_types (
    id integer NOT NULL,
    customfield_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 4   DROP TABLE public.extras_customfield_content_types;
       public         heap    netbox    false            ?           1259    21039    extras_customfield_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_customfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.extras_customfield_id_seq;
       public          netbox    false    317            F           0    0    extras_customfield_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.extras_customfield_id_seq OWNED BY public.extras_customfield.id;
          public          netbox    false    319            @           1259    21041 "   extras_customfield_obj_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_customfield_obj_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.extras_customfield_obj_type_id_seq;
       public          netbox    false    318            G           0    0 "   extras_customfield_obj_type_id_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public.extras_customfield_obj_type_id_seq OWNED BY public.extras_customfield_content_types.id;
          public          netbox    false    320            A           1259    21043    extras_customlink    TABLE     ?  CREATE TABLE public.extras_customlink (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    text character varying(500) NOT NULL,
    url character varying(500) NOT NULL,
    weight smallint NOT NULL,
    group_name character varying(50) NOT NULL,
    button_class character varying(30) NOT NULL,
    new_window boolean NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT extras_customlink_weight_check CHECK ((weight >= 0))
);
 %   DROP TABLE public.extras_customlink;
       public         heap    netbox    false            B           1259    21050    extras_customlink_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_customlink_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.extras_customlink_id_seq;
       public          netbox    false    321            H           0    0    extras_customlink_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.extras_customlink_id_seq OWNED BY public.extras_customlink.id;
          public          netbox    false    322            C           1259    21052    extras_exporttemplate    TABLE     J  CREATE TABLE public.extras_exporttemplate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    template_code text NOT NULL,
    mime_type character varying(50) NOT NULL,
    file_extension character varying(15) NOT NULL,
    content_type_id integer NOT NULL,
    description character varying(200) NOT NULL
);
 )   DROP TABLE public.extras_exporttemplate;
       public         heap    netbox    false            D           1259    21058    extras_exporttemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_exporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.extras_exporttemplate_id_seq;
       public          netbox    false    323            I           0    0    extras_exporttemplate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.extras_exporttemplate_id_seq OWNED BY public.extras_exporttemplate.id;
          public          netbox    false    324            E           1259    21060    extras_imageattachment    TABLE     R  CREATE TABLE public.extras_imageattachment (
    id integer NOT NULL,
    object_id integer NOT NULL,
    image character varying(100) NOT NULL,
    image_height smallint NOT NULL,
    image_width smallint NOT NULL,
    name character varying(50) NOT NULL,
    created timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT extras_imageattachment_image_height_check CHECK ((image_height >= 0)),
    CONSTRAINT extras_imageattachment_image_width_check CHECK ((image_width >= 0)),
    CONSTRAINT extras_imageattachment_object_id_check CHECK ((object_id >= 0))
);
 *   DROP TABLE public.extras_imageattachment;
       public         heap    netbox    false            F           1259    21066    extras_imageattachment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_imageattachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.extras_imageattachment_id_seq;
       public          netbox    false    325            J           0    0    extras_imageattachment_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.extras_imageattachment_id_seq OWNED BY public.extras_imageattachment.id;
          public          netbox    false    326            G           1259    21068    extras_jobresult    TABLE     O  CREATE TABLE public.extras_jobresult (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    completed timestamp with time zone,
    status character varying(30) NOT NULL,
    data jsonb,
    job_id uuid NOT NULL,
    obj_type_id integer NOT NULL,
    user_id integer
);
 $   DROP TABLE public.extras_jobresult;
       public         heap    netbox    false            H           1259    21074    extras_jobresult_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_jobresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.extras_jobresult_id_seq;
       public          netbox    false    327            K           0    0    extras_jobresult_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.extras_jobresult_id_seq OWNED BY public.extras_jobresult.id;
          public          netbox    false    328            I           1259    21076    extras_objectchange    TABLE     ?  CREATE TABLE public.extras_objectchange (
    id integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    user_name character varying(150) NOT NULL,
    request_id uuid NOT NULL,
    action character varying(50) NOT NULL,
    changed_object_id integer NOT NULL,
    related_object_id integer,
    object_repr character varying(200) NOT NULL,
    object_data jsonb NOT NULL,
    changed_object_type_id integer NOT NULL,
    related_object_type_id integer,
    user_id integer,
    CONSTRAINT extras_objectchange_changed_object_id_check CHECK ((changed_object_id >= 0)),
    CONSTRAINT extras_objectchange_related_object_id_check CHECK ((related_object_id >= 0))
);
 '   DROP TABLE public.extras_objectchange;
       public         heap    netbox    false            J           1259    21084    extras_objectchange_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_objectchange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.extras_objectchange_id_seq;
       public          netbox    false    329            L           0    0    extras_objectchange_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.extras_objectchange_id_seq OWNED BY public.extras_objectchange.id;
          public          netbox    false    330            K           1259    21086 
   extras_tag    TABLE     '  CREATE TABLE public.extras_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    description character varying(200) NOT NULL,
    created date,
    last_updated timestamp with time zone
);
    DROP TABLE public.extras_tag;
       public         heap    netbox    false            L           1259    21089    extras_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.extras_tag_id_seq;
       public          netbox    false    331            M           0    0    extras_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.extras_tag_id_seq OWNED BY public.extras_tag.id;
          public          netbox    false    332            M           1259    21091    extras_taggeditem    TABLE     ?   CREATE TABLE public.extras_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.extras_taggeditem;
       public         heap    netbox    false            N           1259    21094    extras_taggeditem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.extras_taggeditem_id_seq;
       public          netbox    false    333            N           0    0    extras_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.extras_taggeditem_id_seq OWNED BY public.extras_taggeditem.id;
          public          netbox    false    334            O           1259    21096    extras_webhook    TABLE     J  CREATE TABLE public.extras_webhook (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    type_create boolean NOT NULL,
    type_update boolean NOT NULL,
    type_delete boolean NOT NULL,
    payload_url character varying(500) NOT NULL,
    http_content_type character varying(100) NOT NULL,
    secret character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    ssl_verification boolean NOT NULL,
    ca_file_path character varying(4096),
    additional_headers text NOT NULL,
    http_method character varying(30) NOT NULL,
    body_template text NOT NULL
);
 "   DROP TABLE public.extras_webhook;
       public         heap    netbox    false            P           1259    21102    extras_webhook_content_types    TABLE     ?   CREATE TABLE public.extras_webhook_content_types (
    id integer NOT NULL,
    webhook_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 0   DROP TABLE public.extras_webhook_content_types;
       public         heap    netbox    false            Q           1259    21105    extras_webhook_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_webhook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.extras_webhook_id_seq;
       public          netbox    false    335            O           0    0    extras_webhook_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.extras_webhook_id_seq OWNED BY public.extras_webhook.id;
          public          netbox    false    337            R           1259    21107    extras_webhook_obj_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.extras_webhook_obj_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.extras_webhook_obj_type_id_seq;
       public          netbox    false    336            P           0    0    extras_webhook_obj_type_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.extras_webhook_obj_type_id_seq OWNED BY public.extras_webhook_content_types.id;
          public          netbox    false    338            S           1259    21109    ipam_aggregate    TABLE     7  CREATE TABLE public.ipam_aggregate (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    prefix cidr NOT NULL,
    date_added date,
    description character varying(200) NOT NULL,
    rir_id integer NOT NULL,
    custom_field_data jsonb NOT NULL,
    tenant_id integer
);
 "   DROP TABLE public.ipam_aggregate;
       public         heap    netbox    false            T           1259    21115    ipam_aggregate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_aggregate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_aggregate_id_seq;
       public          netbox    false    339            Q           0    0    ipam_aggregate_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_aggregate_id_seq OWNED BY public.ipam_aggregate.id;
          public          netbox    false    340            U           1259    21117    ipam_ipaddress    TABLE     _  CREATE TABLE public.ipam_ipaddress (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    address inet NOT NULL,
    description character varying(200) NOT NULL,
    assigned_object_id integer,
    nat_inside_id integer,
    vrf_id integer,
    tenant_id integer,
    status character varying(50) NOT NULL,
    role character varying(50) NOT NULL,
    dns_name character varying(255) NOT NULL,
    assigned_object_type_id integer,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT ipam_ipaddress_assigned_object_id_cff64474_check CHECK ((assigned_object_id >= 0))
);
 "   DROP TABLE public.ipam_ipaddress;
       public         heap    netbox    false            V           1259    21124    ipam_ipaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_ipaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_ipaddress_id_seq;
       public          netbox    false    341            R           0    0    ipam_ipaddress_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_ipaddress_id_seq OWNED BY public.ipam_ipaddress.id;
          public          netbox    false    342            W           1259    21126    ipam_prefix    TABLE     ?  CREATE TABLE public.ipam_prefix (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    prefix cidr NOT NULL,
    status character varying(50) NOT NULL,
    description character varying(200) NOT NULL,
    role_id integer,
    site_id integer,
    vlan_id integer,
    vrf_id integer,
    tenant_id integer,
    is_pool boolean NOT NULL,
    custom_field_data jsonb NOT NULL
);
    DROP TABLE public.ipam_prefix;
       public         heap    netbox    false            X           1259    21132    ipam_prefix_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_prefix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ipam_prefix_id_seq;
       public          netbox    false    343            S           0    0    ipam_prefix_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ipam_prefix_id_seq OWNED BY public.ipam_prefix.id;
          public          netbox    false    344            Y           1259    21134    ipam_rir    TABLE       CREATE TABLE public.ipam_rir (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    is_private boolean NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
    DROP TABLE public.ipam_rir;
       public         heap    netbox    false            Z           1259    21137    ipam_rir_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_rir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ipam_rir_id_seq;
       public          netbox    false    345            T           0    0    ipam_rir_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ipam_rir_id_seq OWNED BY public.ipam_rir.id;
          public          netbox    false    346            [           1259    21139 	   ipam_role    TABLE     X  CREATE TABLE public.ipam_role (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    weight smallint NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL,
    CONSTRAINT ipam_role_weight_check CHECK ((weight >= 0))
);
    DROP TABLE public.ipam_role;
       public         heap    netbox    false            \           1259    21143    ipam_role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ipam_role_id_seq;
       public          netbox    false    347            U           0    0    ipam_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ipam_role_id_seq OWNED BY public.ipam_role.id;
          public          netbox    false    348            ]           1259    21145    ipam_routetarget    TABLE       CREATE TABLE public.ipam_routetarget (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    custom_field_data jsonb NOT NULL,
    name character varying(21) NOT NULL,
    description character varying(200) NOT NULL,
    tenant_id integer
);
 $   DROP TABLE public.ipam_routetarget;
       public         heap    netbox    false            ^           1259    21151    ipam_routetarget_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_routetarget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ipam_routetarget_id_seq;
       public          netbox    false    349            V           0    0    ipam_routetarget_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ipam_routetarget_id_seq OWNED BY public.ipam_routetarget.id;
          public          netbox    false    350            _           1259    21153    ipam_service    TABLE     ~  CREATE TABLE public.ipam_service (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    protocol character varying(50) NOT NULL,
    description character varying(200) NOT NULL,
    device_id integer,
    virtual_machine_id integer,
    custom_field_data jsonb NOT NULL,
    ports integer[] NOT NULL
);
     DROP TABLE public.ipam_service;
       public         heap    netbox    false            `           1259    21159    ipam_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ipam_service_id_seq;
       public          netbox    false    351            W           0    0    ipam_service_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ipam_service_id_seq OWNED BY public.ipam_service.id;
          public          netbox    false    352            a           1259    21161    ipam_service_ipaddresses    TABLE     ?   CREATE TABLE public.ipam_service_ipaddresses (
    id integer NOT NULL,
    service_id integer NOT NULL,
    ipaddress_id integer NOT NULL
);
 ,   DROP TABLE public.ipam_service_ipaddresses;
       public         heap    netbox    false            b           1259    21164    ipam_service_ipaddresses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_service_ipaddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ipam_service_ipaddresses_id_seq;
       public          netbox    false    353            X           0    0    ipam_service_ipaddresses_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ipam_service_ipaddresses_id_seq OWNED BY public.ipam_service_ipaddresses.id;
          public          netbox    false    354            c           1259    21166 	   ipam_vlan    TABLE     ?  CREATE TABLE public.ipam_vlan (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    vid smallint NOT NULL,
    name character varying(64) NOT NULL,
    status character varying(50) NOT NULL,
    role_id integer,
    site_id integer,
    group_id integer,
    description character varying(200) NOT NULL,
    tenant_id integer,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT ipam_vlan_vid_check CHECK ((vid >= 0))
);
    DROP TABLE public.ipam_vlan;
       public         heap    netbox    false            d           1259    21173    ipam_vlan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_vlan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ipam_vlan_id_seq;
       public          netbox    false    355            Y           0    0    ipam_vlan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ipam_vlan_id_seq OWNED BY public.ipam_vlan.id;
          public          netbox    false    356            e           1259    21175    ipam_vlangroup    TABLE       CREATE TABLE public.ipam_vlangroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    site_id integer,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 "   DROP TABLE public.ipam_vlangroup;
       public         heap    netbox    false            f           1259    21178    ipam_vlangroup_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_vlangroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_vlangroup_id_seq;
       public          netbox    false    357            Z           0    0    ipam_vlangroup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_vlangroup_id_seq OWNED BY public.ipam_vlangroup.id;
          public          netbox    false    358            g           1259    21180    ipam_vrf    TABLE     R  CREATE TABLE public.ipam_vrf (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    rd character varying(21),
    description character varying(200) NOT NULL,
    enforce_unique boolean NOT NULL,
    tenant_id integer,
    custom_field_data jsonb NOT NULL
);
    DROP TABLE public.ipam_vrf;
       public         heap    netbox    false            h           1259    21186    ipam_vrf_export_targets    TABLE     ?   CREATE TABLE public.ipam_vrf_export_targets (
    id integer NOT NULL,
    vrf_id integer NOT NULL,
    routetarget_id integer NOT NULL
);
 +   DROP TABLE public.ipam_vrf_export_targets;
       public         heap    netbox    false            i           1259    21189    ipam_vrf_export_targets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_vrf_export_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ipam_vrf_export_targets_id_seq;
       public          netbox    false    360            [           0    0    ipam_vrf_export_targets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ipam_vrf_export_targets_id_seq OWNED BY public.ipam_vrf_export_targets.id;
          public          netbox    false    361            j           1259    21191    ipam_vrf_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_vrf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ipam_vrf_id_seq;
       public          netbox    false    359            \           0    0    ipam_vrf_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ipam_vrf_id_seq OWNED BY public.ipam_vrf.id;
          public          netbox    false    362            k           1259    21193    ipam_vrf_import_targets    TABLE     ?   CREATE TABLE public.ipam_vrf_import_targets (
    id integer NOT NULL,
    vrf_id integer NOT NULL,
    routetarget_id integer NOT NULL
);
 +   DROP TABLE public.ipam_vrf_import_targets;
       public         heap    netbox    false            l           1259    21196    ipam_vrf_import_targets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ipam_vrf_import_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ipam_vrf_import_targets_id_seq;
       public          netbox    false    363            ]           0    0    ipam_vrf_import_targets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ipam_vrf_import_targets_id_seq OWNED BY public.ipam_vrf_import_targets.id;
          public          netbox    false    364            m           1259    21198    secrets_secret    TABLE     ?  CREATE TABLE public.secrets_secret (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    ciphertext bytea NOT NULL,
    hash character varying(128) NOT NULL,
    role_id integer NOT NULL,
    custom_field_data jsonb NOT NULL,
    assigned_object_id integer NOT NULL,
    assigned_object_type_id integer NOT NULL,
    CONSTRAINT secrets_secret_assigned_object_id_check CHECK ((assigned_object_id >= 0))
);
 "   DROP TABLE public.secrets_secret;
       public         heap    netbox    false            n           1259    21205    secrets_secret_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.secrets_secret_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.secrets_secret_id_seq;
       public          netbox    false    365            ^           0    0    secrets_secret_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.secrets_secret_id_seq OWNED BY public.secrets_secret.id;
          public          netbox    false    366            o           1259    21207    secrets_secretrole    TABLE       CREATE TABLE public.secrets_secretrole (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 &   DROP TABLE public.secrets_secretrole;
       public         heap    netbox    false            p           1259    21210    secrets_secretrole_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.secrets_secretrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.secrets_secretrole_id_seq;
       public          netbox    false    367            _           0    0    secrets_secretrole_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.secrets_secretrole_id_seq OWNED BY public.secrets_secretrole.id;
          public          netbox    false    368            q           1259    21212    secrets_sessionkey    TABLE     ?   CREATE TABLE public.secrets_sessionkey (
    id integer NOT NULL,
    cipher bytea NOT NULL,
    hash character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    userkey_id integer NOT NULL
);
 &   DROP TABLE public.secrets_sessionkey;
       public         heap    netbox    false            r           1259    21218    secrets_sessionkey_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.secrets_sessionkey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.secrets_sessionkey_id_seq;
       public          netbox    false    369            `           0    0    secrets_sessionkey_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.secrets_sessionkey_id_seq OWNED BY public.secrets_sessionkey.id;
          public          netbox    false    370            s           1259    21220    secrets_userkey    TABLE     ?   CREATE TABLE public.secrets_userkey (
    id integer NOT NULL,
    created date NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    public_key text NOT NULL,
    master_key_cipher bytea,
    user_id integer NOT NULL
);
 #   DROP TABLE public.secrets_userkey;
       public         heap    netbox    false            t           1259    21226    secrets_userkey_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.secrets_userkey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.secrets_userkey_id_seq;
       public          netbox    false    371            a           0    0    secrets_userkey_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.secrets_userkey_id_seq OWNED BY public.secrets_userkey.id;
          public          netbox    false    372            u           1259    21228 
   taggit_tag    TABLE     ?   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         heap    netbox    false            v           1259    21231    taggit_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public          netbox    false    373            b           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
          public          netbox    false    374            w           1259    21233    taggit_taggeditem    TABLE     ?   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         heap    netbox    false            x           1259    21236    taggit_taggeditem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public          netbox    false    375            c           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
          public          netbox    false    376            y           1259    21238    tenancy_tenant    TABLE     Z  CREATE TABLE public.tenancy_tenant (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    comments text NOT NULL,
    group_id integer,
    custom_field_data jsonb NOT NULL
);
 "   DROP TABLE public.tenancy_tenant;
       public         heap    netbox    false            z           1259    21244    tenancy_tenant_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tenancy_tenant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tenancy_tenant_id_seq;
       public          netbox    false    377            d           0    0    tenancy_tenant_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tenancy_tenant_id_seq OWNED BY public.tenancy_tenant.id;
          public          netbox    false    378            {           1259    21246    tenancy_tenantgroup    TABLE     ?  CREATE TABLE public.tenancy_tenantgroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    parent_id integer,
    level integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT tenancy_tenantgroup_level_check CHECK ((level >= 0)),
    CONSTRAINT tenancy_tenantgroup_lft_check CHECK ((lft >= 0)),
    CONSTRAINT tenancy_tenantgroup_rght_check CHECK ((rght >= 0)),
    CONSTRAINT tenancy_tenantgroup_tree_id_check CHECK ((tree_id >= 0))
);
 '   DROP TABLE public.tenancy_tenantgroup;
       public         heap    netbox    false            |           1259    21253    tenancy_tenantgroup_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tenancy_tenantgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tenancy_tenantgroup_id_seq;
       public          netbox    false    379            e           0    0    tenancy_tenantgroup_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tenancy_tenantgroup_id_seq OWNED BY public.tenancy_tenantgroup.id;
          public          netbox    false    380            }           1259    21255    users_objectpermission    TABLE       CREATE TABLE public.users_objectpermission (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    enabled boolean NOT NULL,
    constraints jsonb,
    actions character varying(30)[] NOT NULL
);
 *   DROP TABLE public.users_objectpermission;
       public         heap    netbox    false            ~           1259    21261    users_objectpermission_groups    TABLE     ?   CREATE TABLE public.users_objectpermission_groups (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    group_id integer NOT NULL
);
 1   DROP TABLE public.users_objectpermission_groups;
       public         heap    netbox    false                       1259    21264 $   users_objectpermission_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_objectpermission_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.users_objectpermission_groups_id_seq;
       public          netbox    false    382            f           0    0 $   users_objectpermission_groups_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.users_objectpermission_groups_id_seq OWNED BY public.users_objectpermission_groups.id;
          public          netbox    false    383            ?           1259    21266    users_objectpermission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_objectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.users_objectpermission_id_seq;
       public          netbox    false    381            g           0    0    users_objectpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.users_objectpermission_id_seq OWNED BY public.users_objectpermission.id;
          public          netbox    false    384            ?           1259    21268 #   users_objectpermission_object_types    TABLE     ?   CREATE TABLE public.users_objectpermission_object_types (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 7   DROP TABLE public.users_objectpermission_object_types;
       public         heap    netbox    false            ?           1259    21271 *   users_objectpermission_object_types_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_objectpermission_object_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.users_objectpermission_object_types_id_seq;
       public          netbox    false    385            h           0    0 *   users_objectpermission_object_types_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.users_objectpermission_object_types_id_seq OWNED BY public.users_objectpermission_object_types.id;
          public          netbox    false    386            ?           1259    21273    users_objectpermission_users    TABLE     ?   CREATE TABLE public.users_objectpermission_users (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    user_id integer NOT NULL
);
 0   DROP TABLE public.users_objectpermission_users;
       public         heap    netbox    false            ?           1259    21276 #   users_objectpermission_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_objectpermission_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.users_objectpermission_users_id_seq;
       public          netbox    false    387            i           0    0 #   users_objectpermission_users_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.users_objectpermission_users_id_seq OWNED BY public.users_objectpermission_users.id;
          public          netbox    false    388            ?           1259    21278    users_token    TABLE     -  CREATE TABLE public.users_token (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    expires timestamp with time zone,
    key character varying(40) NOT NULL,
    write_enabled boolean NOT NULL,
    description character varying(200) NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.users_token;
       public         heap    netbox    false            ?           1259    21281    users_token_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_token_id_seq;
       public          netbox    false    389            j           0    0    users_token_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_token_id_seq OWNED BY public.users_token.id;
          public          netbox    false    390            ?           1259    21283    users_userconfig    TABLE     y   CREATE TABLE public.users_userconfig (
    id integer NOT NULL,
    data jsonb NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.users_userconfig;
       public         heap    netbox    false            ?           1259    21289    users_userconfig_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_userconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_userconfig_id_seq;
       public          netbox    false    391            k           0    0    users_userconfig_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_userconfig_id_seq OWNED BY public.users_userconfig.id;
          public          netbox    false    392            ?           1259    21291    virtualization_cluster    TABLE     Q  CREATE TABLE public.virtualization_cluster (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    comments text NOT NULL,
    group_id integer,
    type_id integer NOT NULL,
    site_id integer,
    tenant_id integer,
    custom_field_data jsonb NOT NULL
);
 *   DROP TABLE public.virtualization_cluster;
       public         heap    netbox    false            ?           1259    21297    virtualization_cluster_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.virtualization_cluster_id_seq;
       public          netbox    false    393            l           0    0    virtualization_cluster_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.virtualization_cluster_id_seq OWNED BY public.virtualization_cluster.id;
          public          netbox    false    394            ?           1259    21299    virtualization_clustergroup    TABLE       CREATE TABLE public.virtualization_clustergroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 /   DROP TABLE public.virtualization_clustergroup;
       public         heap    netbox    false            ?           1259    21302 "   virtualization_clustergroup_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_clustergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.virtualization_clustergroup_id_seq;
       public          netbox    false    395            m           0    0 "   virtualization_clustergroup_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.virtualization_clustergroup_id_seq OWNED BY public.virtualization_clustergroup.id;
          public          netbox    false    396            ?           1259    21304    virtualization_clustertype    TABLE       CREATE TABLE public.virtualization_clustertype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 .   DROP TABLE public.virtualization_clustertype;
       public         heap    netbox    false            ?           1259    21307 !   virtualization_clustertype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_clustertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.virtualization_clustertype_id_seq;
       public          netbox    false    397            n           0    0 !   virtualization_clustertype_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.virtualization_clustertype_id_seq OWNED BY public.virtualization_clustertype.id;
          public          netbox    false    398            ?           1259    21309    virtualization_virtualmachine    TABLE       CREATE TABLE public.virtualization_virtualmachine (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(64) NOT NULL,
    vcpus smallint,
    memory integer,
    disk integer,
    comments text NOT NULL,
    cluster_id integer NOT NULL,
    platform_id integer,
    primary_ip4_id integer,
    primary_ip6_id integer,
    tenant_id integer,
    status character varying(50) NOT NULL,
    role_id integer,
    local_context_data jsonb,
    custom_field_data jsonb NOT NULL,
    CONSTRAINT virtualization_virtualmachine_disk_check CHECK ((disk >= 0)),
    CONSTRAINT virtualization_virtualmachine_memory_check CHECK ((memory >= 0)),
    CONSTRAINT virtualization_virtualmachine_vcpus_check CHECK ((vcpus >= 0))
);
 1   DROP TABLE public.virtualization_virtualmachine;
       public         heap    netbox    false            ?           1259    21318 $   virtualization_virtualmachine_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_virtualmachine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.virtualization_virtualmachine_id_seq;
       public          netbox    false    399            o           0    0 $   virtualization_virtualmachine_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.virtualization_virtualmachine_id_seq OWNED BY public.virtualization_virtualmachine.id;
          public          netbox    false    400            ?           1259    21320    virtualization_vminterface    TABLE     ?  CREATE TABLE public.virtualization_vminterface (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    enabled boolean NOT NULL,
    mac_address macaddr,
    mtu integer,
    mode character varying(50) NOT NULL,
    description character varying(200) NOT NULL,
    untagged_vlan_id integer,
    virtual_machine_id integer NOT NULL,
    CONSTRAINT virtualization_vminterface_mtu_check CHECK ((mtu >= 0))
);
 .   DROP TABLE public.virtualization_vminterface;
       public         heap    netbox    false            ?           1259    21324 !   virtualization_vminterface_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_vminterface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.virtualization_vminterface_id_seq;
       public          netbox    false    401            p           0    0 !   virtualization_vminterface_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.virtualization_vminterface_id_seq OWNED BY public.virtualization_vminterface.id;
          public          netbox    false    402            ?           1259    21326 '   virtualization_vminterface_tagged_vlans    TABLE     ?   CREATE TABLE public.virtualization_vminterface_tagged_vlans (
    id integer NOT NULL,
    vminterface_id integer NOT NULL,
    vlan_id integer NOT NULL
);
 ;   DROP TABLE public.virtualization_vminterface_tagged_vlans;
       public         heap    netbox    false            ?           1259    21329 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq;
       public          netbox    false    403            q           0    0 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq OWNED BY public.virtualization_vminterface_tagged_vlans.id;
          public          netbox    false    404            ?           2604    21331    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    203    202            ?           2604    21332    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    205    204            ?           2604    21333    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    207    206            ?           2604    21334    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    211    208            ?           2604    21335    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    210    209            ?           2604    21336    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    213    212            ?           2604    21337    circuits_circuit id    DEFAULT     z   ALTER TABLE ONLY public.circuits_circuit ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuit_id_seq'::regclass);
 B   ALTER TABLE public.circuits_circuit ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    215    214            ?           2604    21338    circuits_circuittermination id    DEFAULT     ?   ALTER TABLE ONLY public.circuits_circuittermination ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuittermination_id_seq'::regclass);
 M   ALTER TABLE public.circuits_circuittermination ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    217    216            ?           2604    21339    circuits_circuittype id    DEFAULT     ?   ALTER TABLE ONLY public.circuits_circuittype ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuittype_id_seq'::regclass);
 F   ALTER TABLE public.circuits_circuittype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    219    218            ?           2604    21340    circuits_provider id    DEFAULT     |   ALTER TABLE ONLY public.circuits_provider ALTER COLUMN id SET DEFAULT nextval('public.circuits_provider_id_seq'::regclass);
 C   ALTER TABLE public.circuits_provider ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    221    220            ?           2604    21341    dcim_cable id    DEFAULT     n   ALTER TABLE ONLY public.dcim_cable ALTER COLUMN id SET DEFAULT nextval('public.dcim_cable_id_seq'::regclass);
 <   ALTER TABLE public.dcim_cable ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    223    222            ?           2604    21342    dcim_cablepath id    DEFAULT     v   ALTER TABLE ONLY public.dcim_cablepath ALTER COLUMN id SET DEFAULT nextval('public.dcim_cablepath_id_seq'::regclass);
 @   ALTER TABLE public.dcim_cablepath ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    225    224            ?           2604    21343    dcim_consoleport id    DEFAULT     z   ALTER TABLE ONLY public.dcim_consoleport ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleport_id_seq'::regclass);
 B   ALTER TABLE public.dcim_consoleport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    227    226            ?           2604    21344    dcim_consoleporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_consoleporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleporttemplate_id_seq'::regclass);
 J   ALTER TABLE public.dcim_consoleporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    229    228            ?           2604    21345    dcim_consoleserverport id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_consoleserverport ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleserverport_id_seq'::regclass);
 H   ALTER TABLE public.dcim_consoleserverport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    231    230            ?           2604    21346 !   dcim_consoleserverporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleserverporttemplate_id_seq'::regclass);
 P   ALTER TABLE public.dcim_consoleserverporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    233    232            ?           2604    21347    dcim_device id    DEFAULT     p   ALTER TABLE ONLY public.dcim_device ALTER COLUMN id SET DEFAULT nextval('public.dcim_device_id_seq'::regclass);
 =   ALTER TABLE public.dcim_device ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    235    234            ?           2604    21348    dcim_devicebay id    DEFAULT     v   ALTER TABLE ONLY public.dcim_devicebay ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicebay_id_seq'::regclass);
 @   ALTER TABLE public.dcim_devicebay ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    237    236            ?           2604    21349    dcim_devicebaytemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_devicebaytemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicebaytemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_devicebaytemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    239    238            ?           2604    21350    dcim_devicerole id    DEFAULT     x   ALTER TABLE ONLY public.dcim_devicerole ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicerole_id_seq'::regclass);
 A   ALTER TABLE public.dcim_devicerole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    241    240            ?           2604    21351    dcim_devicetype id    DEFAULT     x   ALTER TABLE ONLY public.dcim_devicetype ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicetype_id_seq'::regclass);
 A   ALTER TABLE public.dcim_devicetype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    243    242            ?           2604    21352    dcim_frontport id    DEFAULT     v   ALTER TABLE ONLY public.dcim_frontport ALTER COLUMN id SET DEFAULT nextval('public.dcim_frontport_id_seq'::regclass);
 @   ALTER TABLE public.dcim_frontport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    245    244            ?           2604    21353    dcim_frontporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_frontporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_frontporttemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_frontporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    247    246            ?           2604    21354    dcim_interface id    DEFAULT     v   ALTER TABLE ONLY public.dcim_interface ALTER COLUMN id SET DEFAULT nextval('public.dcim_interface_id_seq'::regclass);
 @   ALTER TABLE public.dcim_interface ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    249    248            ?           2604    21355    dcim_interface_tagged_vlans id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.dcim_interface_tagged_vlans_id_seq'::regclass);
 M   ALTER TABLE public.dcim_interface_tagged_vlans ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    251    250            ?           2604    21356    dcim_interfacetemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_interfacetemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_interfacetemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_interfacetemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    253    252            ?           2604    21357    dcim_inventoryitem id    DEFAULT     w   ALTER TABLE ONLY public.dcim_inventoryitem ALTER COLUMN id SET DEFAULT nextval('public.dcim_module_id_seq'::regclass);
 D   ALTER TABLE public.dcim_inventoryitem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    257    254            ?           2604    21358    dcim_manufacturer id    DEFAULT     |   ALTER TABLE ONLY public.dcim_manufacturer ALTER COLUMN id SET DEFAULT nextval('public.dcim_manufacturer_id_seq'::regclass);
 C   ALTER TABLE public.dcim_manufacturer ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    256    255            ?           2604    21359    dcim_platform id    DEFAULT     t   ALTER TABLE ONLY public.dcim_platform ALTER COLUMN id SET DEFAULT nextval('public.dcim_platform_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_platform ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    259    258            ?           2604    21360    dcim_powerfeed id    DEFAULT     v   ALTER TABLE ONLY public.dcim_powerfeed ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerfeed_id_seq'::regclass);
 @   ALTER TABLE public.dcim_powerfeed ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    261    260            ?           2604    21361    dcim_poweroutlet id    DEFAULT     z   ALTER TABLE ONLY public.dcim_poweroutlet ALTER COLUMN id SET DEFAULT nextval('public.dcim_poweroutlet_id_seq'::regclass);
 B   ALTER TABLE public.dcim_poweroutlet ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    263    262            ?           2604    21362    dcim_poweroutlettemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_poweroutlettemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_poweroutlettemplate_id_seq'::regclass);
 J   ALTER TABLE public.dcim_poweroutlettemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    265    264            ?           2604    21363    dcim_powerpanel id    DEFAULT     x   ALTER TABLE ONLY public.dcim_powerpanel ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerpanel_id_seq'::regclass);
 A   ALTER TABLE public.dcim_powerpanel ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    267    266            ?           2604    21364    dcim_powerport id    DEFAULT     v   ALTER TABLE ONLY public.dcim_powerport ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerport_id_seq'::regclass);
 @   ALTER TABLE public.dcim_powerport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    269    268            ?           2604    21365    dcim_powerporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_powerporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerporttemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_powerporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    271    270            ?           2604    21366    dcim_rack id    DEFAULT     l   ALTER TABLE ONLY public.dcim_rack ALTER COLUMN id SET DEFAULT nextval('public.dcim_rack_id_seq'::regclass);
 ;   ALTER TABLE public.dcim_rack ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    273    272            ?           2604    21367    dcim_rackgroup id    DEFAULT     v   ALTER TABLE ONLY public.dcim_rackgroup ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackgroup_id_seq'::regclass);
 @   ALTER TABLE public.dcim_rackgroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    275    274            ?           2604    21368    dcim_rackreservation id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_rackreservation ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackreservation_id_seq'::regclass);
 F   ALTER TABLE public.dcim_rackreservation ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    277    276            ?           2604    21369    dcim_rackrole id    DEFAULT     t   ALTER TABLE ONLY public.dcim_rackrole ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackrole_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_rackrole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    279    278            ?           2604    21370    dcim_rearport id    DEFAULT     t   ALTER TABLE ONLY public.dcim_rearport ALTER COLUMN id SET DEFAULT nextval('public.dcim_rearport_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_rearport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    281    280            ?           2604    21371    dcim_rearporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_rearporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_rearporttemplate_id_seq'::regclass);
 G   ALTER TABLE public.dcim_rearporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    283    282            ?           2604    21372    dcim_region id    DEFAULT     p   ALTER TABLE ONLY public.dcim_region ALTER COLUMN id SET DEFAULT nextval('public.dcim_region_id_seq'::regclass);
 =   ALTER TABLE public.dcim_region ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    285    284            ?           2604    21373    dcim_site id    DEFAULT     l   ALTER TABLE ONLY public.dcim_site ALTER COLUMN id SET DEFAULT nextval('public.dcim_site_id_seq'::regclass);
 ;   ALTER TABLE public.dcim_site ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    287    286            ?           2604    21374    dcim_virtualchassis id    DEFAULT     ?   ALTER TABLE ONLY public.dcim_virtualchassis ALTER COLUMN id SET DEFAULT nextval('public.dcim_virtualchassis_id_seq'::regclass);
 E   ALTER TABLE public.dcim_virtualchassis ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    289    288            ?           2604    21375    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    291    290            ?           2604    21376    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    293    292            ?           2604    21377    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    295    294            ?           2604    21378    extras_configcontext id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_id_seq'::regclass);
 F   ALTER TABLE public.extras_configcontext ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    302    297            ?           2604    21379 &   extras_configcontext_cluster_groups id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_cluster_groups_id_seq'::regclass);
 U   ALTER TABLE public.extras_configcontext_cluster_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    299    298            ?           2604    21380     extras_configcontext_clusters id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_clusters ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_clusters_id_seq'::regclass);
 O   ALTER TABLE public.extras_configcontext_clusters ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    301    300            ?           2604    21381 !   extras_configcontext_platforms id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_platforms ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_platforms_id_seq'::regclass);
 P   ALTER TABLE public.extras_configcontext_platforms ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    304    303            ?           2604    21382    extras_configcontext_regions id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_regions ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_regions_id_seq'::regclass);
 N   ALTER TABLE public.extras_configcontext_regions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    306    305            ?           2604    21383    extras_configcontext_roles id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_roles ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_roles_id_seq'::regclass);
 L   ALTER TABLE public.extras_configcontext_roles ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    308    307            ?           2604    21384    extras_configcontext_sites id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_sites ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_sites_id_seq'::regclass);
 L   ALTER TABLE public.extras_configcontext_sites ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    310    309            ?           2604    21385    extras_configcontext_tags id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_tags ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tags_id_seq'::regclass);
 K   ALTER TABLE public.extras_configcontext_tags ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    312    311            ?           2604    21386 %   extras_configcontext_tenant_groups id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenant_groups_id_seq'::regclass);
 T   ALTER TABLE public.extras_configcontext_tenant_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    314    313            ?           2604    21387    extras_configcontext_tenants id    DEFAULT     ?   ALTER TABLE ONLY public.extras_configcontext_tenants ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenants_id_seq'::regclass);
 N   ALTER TABLE public.extras_configcontext_tenants ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    316    315                        2604    21388    extras_customfield id    DEFAULT     ~   ALTER TABLE ONLY public.extras_customfield ALTER COLUMN id SET DEFAULT nextval('public.extras_customfield_id_seq'::regclass);
 D   ALTER TABLE public.extras_customfield ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    319    317                       2604    21389 #   extras_customfield_content_types id    DEFAULT     ?   ALTER TABLE ONLY public.extras_customfield_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_customfield_obj_type_id_seq'::regclass);
 R   ALTER TABLE public.extras_customfield_content_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    320    318                       2604    21390    extras_customlink id    DEFAULT     |   ALTER TABLE ONLY public.extras_customlink ALTER COLUMN id SET DEFAULT nextval('public.extras_customlink_id_seq'::regclass);
 C   ALTER TABLE public.extras_customlink ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    322    321                       2604    21391    extras_exporttemplate id    DEFAULT     ?   ALTER TABLE ONLY public.extras_exporttemplate ALTER COLUMN id SET DEFAULT nextval('public.extras_exporttemplate_id_seq'::regclass);
 G   ALTER TABLE public.extras_exporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    324    323                       2604    21392    extras_imageattachment id    DEFAULT     ?   ALTER TABLE ONLY public.extras_imageattachment ALTER COLUMN id SET DEFAULT nextval('public.extras_imageattachment_id_seq'::regclass);
 H   ALTER TABLE public.extras_imageattachment ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    326    325                       2604    21393    extras_jobresult id    DEFAULT     z   ALTER TABLE ONLY public.extras_jobresult ALTER COLUMN id SET DEFAULT nextval('public.extras_jobresult_id_seq'::regclass);
 B   ALTER TABLE public.extras_jobresult ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    328    327                       2604    21394    extras_objectchange id    DEFAULT     ?   ALTER TABLE ONLY public.extras_objectchange ALTER COLUMN id SET DEFAULT nextval('public.extras_objectchange_id_seq'::regclass);
 E   ALTER TABLE public.extras_objectchange ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    330    329                       2604    21395    extras_tag id    DEFAULT     n   ALTER TABLE ONLY public.extras_tag ALTER COLUMN id SET DEFAULT nextval('public.extras_tag_id_seq'::regclass);
 <   ALTER TABLE public.extras_tag ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    332    331                       2604    21396    extras_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.extras_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.extras_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.extras_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    334    333                       2604    21397    extras_webhook id    DEFAULT     v   ALTER TABLE ONLY public.extras_webhook ALTER COLUMN id SET DEFAULT nextval('public.extras_webhook_id_seq'::regclass);
 @   ALTER TABLE public.extras_webhook ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    337    335                       2604    21398    extras_webhook_content_types id    DEFAULT     ?   ALTER TABLE ONLY public.extras_webhook_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_webhook_obj_type_id_seq'::regclass);
 N   ALTER TABLE public.extras_webhook_content_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    338    336                       2604    21399    ipam_aggregate id    DEFAULT     v   ALTER TABLE ONLY public.ipam_aggregate ALTER COLUMN id SET DEFAULT nextval('public.ipam_aggregate_id_seq'::regclass);
 @   ALTER TABLE public.ipam_aggregate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    340    339                       2604    21400    ipam_ipaddress id    DEFAULT     v   ALTER TABLE ONLY public.ipam_ipaddress ALTER COLUMN id SET DEFAULT nextval('public.ipam_ipaddress_id_seq'::regclass);
 @   ALTER TABLE public.ipam_ipaddress ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    342    341                       2604    21401    ipam_prefix id    DEFAULT     p   ALTER TABLE ONLY public.ipam_prefix ALTER COLUMN id SET DEFAULT nextval('public.ipam_prefix_id_seq'::regclass);
 =   ALTER TABLE public.ipam_prefix ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    344    343                       2604    21402    ipam_rir id    DEFAULT     j   ALTER TABLE ONLY public.ipam_rir ALTER COLUMN id SET DEFAULT nextval('public.ipam_rir_id_seq'::regclass);
 :   ALTER TABLE public.ipam_rir ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    346    345                       2604    21403    ipam_role id    DEFAULT     l   ALTER TABLE ONLY public.ipam_role ALTER COLUMN id SET DEFAULT nextval('public.ipam_role_id_seq'::regclass);
 ;   ALTER TABLE public.ipam_role ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    348    347                       2604    21404    ipam_routetarget id    DEFAULT     z   ALTER TABLE ONLY public.ipam_routetarget ALTER COLUMN id SET DEFAULT nextval('public.ipam_routetarget_id_seq'::regclass);
 B   ALTER TABLE public.ipam_routetarget ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    350    349                       2604    21405    ipam_service id    DEFAULT     r   ALTER TABLE ONLY public.ipam_service ALTER COLUMN id SET DEFAULT nextval('public.ipam_service_id_seq'::regclass);
 >   ALTER TABLE public.ipam_service ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    352    351                       2604    21406    ipam_service_ipaddresses id    DEFAULT     ?   ALTER TABLE ONLY public.ipam_service_ipaddresses ALTER COLUMN id SET DEFAULT nextval('public.ipam_service_ipaddresses_id_seq'::regclass);
 J   ALTER TABLE public.ipam_service_ipaddresses ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    354    353                       2604    21407    ipam_vlan id    DEFAULT     l   ALTER TABLE ONLY public.ipam_vlan ALTER COLUMN id SET DEFAULT nextval('public.ipam_vlan_id_seq'::regclass);
 ;   ALTER TABLE public.ipam_vlan ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    356    355                        2604    21408    ipam_vlangroup id    DEFAULT     v   ALTER TABLE ONLY public.ipam_vlangroup ALTER COLUMN id SET DEFAULT nextval('public.ipam_vlangroup_id_seq'::regclass);
 @   ALTER TABLE public.ipam_vlangroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    358    357            !           2604    21409    ipam_vrf id    DEFAULT     j   ALTER TABLE ONLY public.ipam_vrf ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_id_seq'::regclass);
 :   ALTER TABLE public.ipam_vrf ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    362    359            "           2604    21410    ipam_vrf_export_targets id    DEFAULT     ?   ALTER TABLE ONLY public.ipam_vrf_export_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_export_targets_id_seq'::regclass);
 I   ALTER TABLE public.ipam_vrf_export_targets ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    361    360            #           2604    21411    ipam_vrf_import_targets id    DEFAULT     ?   ALTER TABLE ONLY public.ipam_vrf_import_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_import_targets_id_seq'::regclass);
 I   ALTER TABLE public.ipam_vrf_import_targets ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    364    363            $           2604    21412    secrets_secret id    DEFAULT     v   ALTER TABLE ONLY public.secrets_secret ALTER COLUMN id SET DEFAULT nextval('public.secrets_secret_id_seq'::regclass);
 @   ALTER TABLE public.secrets_secret ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    366    365            &           2604    21413    secrets_secretrole id    DEFAULT     ~   ALTER TABLE ONLY public.secrets_secretrole ALTER COLUMN id SET DEFAULT nextval('public.secrets_secretrole_id_seq'::regclass);
 D   ALTER TABLE public.secrets_secretrole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    368    367            '           2604    21414    secrets_sessionkey id    DEFAULT     ~   ALTER TABLE ONLY public.secrets_sessionkey ALTER COLUMN id SET DEFAULT nextval('public.secrets_sessionkey_id_seq'::regclass);
 D   ALTER TABLE public.secrets_sessionkey ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    370    369            (           2604    21415    secrets_userkey id    DEFAULT     x   ALTER TABLE ONLY public.secrets_userkey ALTER COLUMN id SET DEFAULT nextval('public.secrets_userkey_id_seq'::regclass);
 A   ALTER TABLE public.secrets_userkey ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    372    371            )           2604    21416    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    374    373            *           2604    21417    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    376    375            +           2604    21418    tenancy_tenant id    DEFAULT     v   ALTER TABLE ONLY public.tenancy_tenant ALTER COLUMN id SET DEFAULT nextval('public.tenancy_tenant_id_seq'::regclass);
 @   ALTER TABLE public.tenancy_tenant ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    378    377            ,           2604    21419    tenancy_tenantgroup id    DEFAULT     ?   ALTER TABLE ONLY public.tenancy_tenantgroup ALTER COLUMN id SET DEFAULT nextval('public.tenancy_tenantgroup_id_seq'::regclass);
 E   ALTER TABLE public.tenancy_tenantgroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    380    379            1           2604    21420    users_objectpermission id    DEFAULT     ?   ALTER TABLE ONLY public.users_objectpermission ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_id_seq'::regclass);
 H   ALTER TABLE public.users_objectpermission ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    384    381            2           2604    21421     users_objectpermission_groups id    DEFAULT     ?   ALTER TABLE ONLY public.users_objectpermission_groups ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_groups_id_seq'::regclass);
 O   ALTER TABLE public.users_objectpermission_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    383    382            3           2604    21422 &   users_objectpermission_object_types id    DEFAULT     ?   ALTER TABLE ONLY public.users_objectpermission_object_types ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_object_types_id_seq'::regclass);
 U   ALTER TABLE public.users_objectpermission_object_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    386    385            4           2604    21423    users_objectpermission_users id    DEFAULT     ?   ALTER TABLE ONLY public.users_objectpermission_users ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_users_id_seq'::regclass);
 N   ALTER TABLE public.users_objectpermission_users ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    388    387            5           2604    21424    users_token id    DEFAULT     p   ALTER TABLE ONLY public.users_token ALTER COLUMN id SET DEFAULT nextval('public.users_token_id_seq'::regclass);
 =   ALTER TABLE public.users_token ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    390    389            6           2604    21425    users_userconfig id    DEFAULT     z   ALTER TABLE ONLY public.users_userconfig ALTER COLUMN id SET DEFAULT nextval('public.users_userconfig_id_seq'::regclass);
 B   ALTER TABLE public.users_userconfig ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    392    391            7           2604    21426    virtualization_cluster id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_cluster ALTER COLUMN id SET DEFAULT nextval('public.virtualization_cluster_id_seq'::regclass);
 H   ALTER TABLE public.virtualization_cluster ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    394    393            8           2604    21427    virtualization_clustergroup id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_clustergroup ALTER COLUMN id SET DEFAULT nextval('public.virtualization_clustergroup_id_seq'::regclass);
 M   ALTER TABLE public.virtualization_clustergroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    396    395            9           2604    21428    virtualization_clustertype id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_clustertype ALTER COLUMN id SET DEFAULT nextval('public.virtualization_clustertype_id_seq'::regclass);
 L   ALTER TABLE public.virtualization_clustertype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    398    397            :           2604    21429     virtualization_virtualmachine id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine ALTER COLUMN id SET DEFAULT nextval('public.virtualization_virtualmachine_id_seq'::regclass);
 O   ALTER TABLE public.virtualization_virtualmachine ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    400    399            >           2604    21430    virtualization_vminterface id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_vminterface ALTER COLUMN id SET DEFAULT nextval('public.virtualization_vminterface_id_seq'::regclass);
 L   ALTER TABLE public.virtualization_vminterface ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    402    401            @           2604    21431 *   virtualization_vminterface_tagged_vlans id    DEFAULT     ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.virtualization_vminterface_tagged_vlans_id_seq'::regclass);
 Y   ALTER TABLE public.virtualization_vminterface_tagged_vlans ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    404    403            ;          0    20622 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          netbox    false    202   l      =          0    20627    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          netbox    false    204   (l      ?          0    20632    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          netbox    false    206   El      A          0    20637 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          netbox    false    208   rx      B          0    20643    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          netbox    false    209   (y      E          0    20650    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          netbox    false    212   Ey      G          0    20655    circuits_circuit 
   TABLE DATA           ?   COPY public.circuits_circuit (id, created, last_updated, cid, install_date, commit_rate, comments, provider_id, type_id, tenant_id, description, status, custom_field_data) FROM stdin;
    public          netbox    false    214   by      I          0    20664    circuits_circuittermination 
   TABLE DATA           ?   COPY public.circuits_circuittermination (id, term_side, port_speed, upstream_speed, xconnect_id, pp_info, circuit_id, site_id, cable_id, description, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    216   y      K          0    20672    circuits_circuittype 
   TABLE DATA           b   COPY public.circuits_circuittype (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    218   ?y      M          0    20677    circuits_provider 
   TABLE DATA           ?   COPY public.circuits_provider (id, created, last_updated, name, slug, asn, account, portal_url, noc_contact, admin_contact, comments, custom_field_data) FROM stdin;
    public          netbox    false    220   ?y      O          0    20685 
   dcim_cable 
   TABLE DATA             COPY public.dcim_cable (id, created, last_updated, termination_a_id, termination_b_id, type, status, label, color, length, length_unit, _abs_length, termination_a_type_id, termination_b_type_id, _termination_a_device_id, _termination_b_device_id, custom_field_data) FROM stdin;
    public          netbox    false    222   ?y      Q          0    20696    dcim_cablepath 
   TABLE DATA           ?   COPY public.dcim_cablepath (id, origin_id, destination_id, path, is_active, is_split, destination_type_id, origin_type_id) FROM stdin;
    public          netbox    false    224   ?y      S          0    20706    dcim_consoleport 
   TABLE DATA           ?   COPY public.dcim_consoleport (id, name, device_id, cable_id, description, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    226   z      U          0    20712    dcim_consoleporttemplate 
   TABLE DATA           m   COPY public.dcim_consoleporttemplate (id, name, device_type_id, type, _name, label, description) FROM stdin;
    public          netbox    false    228   -z      W          0    20717    dcim_consoleserverport 
   TABLE DATA           ?   COPY public.dcim_consoleserverport (id, name, device_id, cable_id, description, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    230   Jz      Y          0    20723    dcim_consoleserverporttemplate 
   TABLE DATA           s   COPY public.dcim_consoleserverporttemplate (id, name, device_type_id, type, _name, label, description) FROM stdin;
    public          netbox    false    232   gz      [          0    20728    dcim_device 
   TABLE DATA           O  COPY public.dcim_device (id, created, last_updated, name, serial, "position", face, status, comments, device_role_id, device_type_id, platform_id, rack_id, primary_ip4_id, primary_ip6_id, tenant_id, asset_tag, site_id, cluster_id, virtual_chassis_id, vc_position, vc_priority, local_context_data, _name, custom_field_data) FROM stdin;
    public          netbox    false    234   ?z      ]          0    20739    dcim_devicebay 
   TABLE DATA           m   COPY public.dcim_devicebay (id, name, device_id, installed_device_id, description, _name, label) FROM stdin;
    public          netbox    false    236   ?z      _          0    20744    dcim_devicebaytemplate 
   TABLE DATA           e   COPY public.dcim_devicebaytemplate (id, name, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    238   ?z      a          0    20749    dcim_devicerole 
   TABLE DATA           m   COPY public.dcim_devicerole (id, name, slug, color, vm_role, created, last_updated, description) FROM stdin;
    public          netbox    false    240   ?z      c          0    20754    dcim_devicetype 
   TABLE DATA           ?   COPY public.dcim_devicetype (id, model, slug, u_height, is_full_depth, manufacturer_id, subdevice_role, part_number, comments, created, last_updated, front_image, rear_image, custom_field_data) FROM stdin;
    public          netbox    false    242   ?z      e          0    20763    dcim_frontport 
   TABLE DATA           ?   COPY public.dcim_frontport (id, name, type, rear_port_position, description, device_id, rear_port_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id) FROM stdin;
    public          netbox    false    244   {      g          0    20770    dcim_frontporttemplate 
   TABLE DATA           ?   COPY public.dcim_frontporttemplate (id, name, type, rear_port_position, device_type_id, rear_port_id, _name, label, description) FROM stdin;
    public          netbox    false    246   2{      i          0    20776    dcim_interface 
   TABLE DATA           ?   COPY public.dcim_interface (id, name, type, mgmt_only, description, device_id, mac_address, lag_id, enabled, mtu, mode, untagged_vlan_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    248   O{      k          0    20786    dcim_interface_tagged_vlans 
   TABLE DATA           P   COPY public.dcim_interface_tagged_vlans (id, interface_id, vlan_id) FROM stdin;
    public          netbox    false    250   l{      m          0    20791    dcim_interfacetemplate 
   TABLE DATA           v   COPY public.dcim_interfacetemplate (id, name, type, mgmt_only, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    252   ?{      o          0    20796    dcim_inventoryitem 
   TABLE DATA           ?   COPY public.dcim_inventoryitem (id, name, part_id, serial, discovered, device_id, parent_id, manufacturer_id, asset_tag, description, _name, label, level, lft, rght, tree_id) FROM stdin;
    public          netbox    false    254   ?{      p          0    20806    dcim_manufacturer 
   TABLE DATA           _   COPY public.dcim_manufacturer (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    255   ?{      s          0    20813    dcim_platform 
   TABLE DATA           ?   COPY public.dcim_platform (id, name, slug, napalm_driver, manufacturer_id, created, last_updated, napalm_args, description) FROM stdin;
    public          netbox    false    258   ?{      u          0    20821    dcim_powerfeed 
   TABLE DATA           
  COPY public.dcim_powerfeed (id, created, last_updated, name, status, type, supply, phase, voltage, amperage, max_utilization, available_power, comments, cable_id, power_panel_id, rack_id, custom_field_data, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    260   ?{      w          0    20833    dcim_poweroutlet 
   TABLE DATA           ?   COPY public.dcim_poweroutlet (id, name, device_id, cable_id, description, feed_leg, power_port_id, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    262   |      y          0    20842    dcim_poweroutlettemplate 
   TABLE DATA           ?   COPY public.dcim_poweroutlettemplate (id, name, device_type_id, feed_leg, power_port_id, type, _name, label, description) FROM stdin;
    public          netbox    false    264   7|      {          0    20850    dcim_powerpanel 
   TABLE DATA           u   COPY public.dcim_powerpanel (id, created, last_updated, name, rack_group_id, site_id, custom_field_data) FROM stdin;
    public          netbox    false    266   T|      }          0    20858    dcim_powerport 
   TABLE DATA           ?   COPY public.dcim_powerport (id, name, device_id, cable_id, description, allocated_draw, maximum_draw, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    268   q|                0    20866    dcim_powerporttemplate 
   TABLE DATA           ?   COPY public.dcim_powerporttemplate (id, name, device_type_id, allocated_draw, maximum_draw, type, _name, label, description) FROM stdin;
    public          netbox    false    270   ?|      ?          0    20873 	   dcim_rack 
   TABLE DATA              COPY public.dcim_rack (id, created, last_updated, name, facility_id, u_height, comments, group_id, site_id, tenant_id, type, width, role_id, desc_units, serial, status, asset_tag, outer_depth, outer_unit, outer_width, _name, custom_field_data) FROM stdin;
    public          netbox    false    272   ?|      ?          0    20885    dcim_rackgroup 
   TABLE DATA           ?   COPY public.dcim_rackgroup (id, name, slug, site_id, created, last_updated, parent_id, level, lft, rght, tree_id, description) FROM stdin;
    public          netbox    false    274   ?|      ?          0    20894    dcim_rackreservation 
   TABLE DATA           ?   COPY public.dcim_rackreservation (id, units, created, description, rack_id, user_id, tenant_id, last_updated, custom_field_data) FROM stdin;
    public          netbox    false    276   ?|      ?          0    20902    dcim_rackrole 
   TABLE DATA           b   COPY public.dcim_rackrole (id, name, slug, color, created, last_updated, description) FROM stdin;
    public          netbox    false    278   }      ?          0    20907    dcim_rearport 
   TABLE DATA           ?   COPY public.dcim_rearport (id, name, type, positions, description, device_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id) FROM stdin;
    public          netbox    false    280   }      ?          0    20914    dcim_rearporttemplate 
   TABLE DATA           u   COPY public.dcim_rearporttemplate (id, name, type, positions, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    282   <}      ?          0    20920    dcim_region 
   TABLE DATA              COPY public.dcim_region (id, name, slug, lft, rght, tree_id, level, parent_id, created, last_updated, description) FROM stdin;
    public          netbox    false    284   Y}      ?          0    20929 	   dcim_site 
   TABLE DATA             COPY public.dcim_site (id, created, last_updated, name, slug, facility, asn, physical_address, shipping_address, comments, tenant_id, contact_email, contact_name, contact_phone, region_id, description, status, time_zone, latitude, longitude, _name, custom_field_data) FROM stdin;
    public          netbox    false    286   v}      ?          0    20937    dcim_virtualchassis 
   TABLE DATA           t   COPY public.dcim_virtualchassis (id, domain, master_id, created, last_updated, name, custom_field_data) FROM stdin;
    public          netbox    false    288   ?}      ?          0    20945    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          netbox    false    290   ?}      ?          0    20954    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          netbox    false    292   ?}      ?          0    20959    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          netbox    false    294   {?      ?          0    20967    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          netbox    false    296   ??      ?          0    20973    extras_configcontext 
   TABLE DATA           u   COPY public.extras_configcontext (id, name, weight, description, is_active, data, created, last_updated) FROM stdin;
    public          netbox    false    297   v?      ?          0    20980 #   extras_configcontext_cluster_groups 
   TABLE DATA           d   COPY public.extras_configcontext_cluster_groups (id, configcontext_id, clustergroup_id) FROM stdin;
    public          netbox    false    298   ??      ?          0    20985    extras_configcontext_clusters 
   TABLE DATA           Y   COPY public.extras_configcontext_clusters (id, configcontext_id, cluster_id) FROM stdin;
    public          netbox    false    300   ??      ?          0    20992    extras_configcontext_platforms 
   TABLE DATA           [   COPY public.extras_configcontext_platforms (id, configcontext_id, platform_id) FROM stdin;
    public          netbox    false    303   ͚      ?          0    20997    extras_configcontext_regions 
   TABLE DATA           W   COPY public.extras_configcontext_regions (id, configcontext_id, region_id) FROM stdin;
    public          netbox    false    305   ??      ?          0    21002    extras_configcontext_roles 
   TABLE DATA           Y   COPY public.extras_configcontext_roles (id, configcontext_id, devicerole_id) FROM stdin;
    public          netbox    false    307   ?      ?          0    21007    extras_configcontext_sites 
   TABLE DATA           S   COPY public.extras_configcontext_sites (id, configcontext_id, site_id) FROM stdin;
    public          netbox    false    309   $?      ?          0    21012    extras_configcontext_tags 
   TABLE DATA           Q   COPY public.extras_configcontext_tags (id, configcontext_id, tag_id) FROM stdin;
    public          netbox    false    311   A?      ?          0    21017 "   extras_configcontext_tenant_groups 
   TABLE DATA           b   COPY public.extras_configcontext_tenant_groups (id, configcontext_id, tenantgroup_id) FROM stdin;
    public          netbox    false    313   ^?      ?          0    21022    extras_configcontext_tenants 
   TABLE DATA           W   COPY public.extras_configcontext_tenants (id, configcontext_id, tenant_id) FROM stdin;
    public          netbox    false    315   {?      ?          0    21027    extras_customfield 
   TABLE DATA           ?   COPY public.extras_customfield (id, type, name, label, description, required, weight, filter_logic, choices, "default", validation_maximum, validation_minimum, validation_regex) FROM stdin;
    public          netbox    false    317   ??      ?          0    21036     extras_customfield_content_types 
   TABLE DATA           ^   COPY public.extras_customfield_content_types (id, customfield_id, contenttype_id) FROM stdin;
    public          netbox    false    318   ??      ?          0    21043    extras_customlink 
   TABLE DATA              COPY public.extras_customlink (id, name, text, url, weight, group_name, button_class, new_window, content_type_id) FROM stdin;
    public          netbox    false    321   қ      ?          0    21052    extras_exporttemplate 
   TABLE DATA           ?   COPY public.extras_exporttemplate (id, name, template_code, mime_type, file_extension, content_type_id, description) FROM stdin;
    public          netbox    false    323   ??      ?          0    21060    extras_imageattachment 
   TABLE DATA           ?   COPY public.extras_imageattachment (id, object_id, image, image_height, image_width, name, created, content_type_id) FROM stdin;
    public          netbox    false    325   ?      ?          0    21068    extras_jobresult 
   TABLE DATA           t   COPY public.extras_jobresult (id, name, created, completed, status, data, job_id, obj_type_id, user_id) FROM stdin;
    public          netbox    false    327   )?      ?          0    21076    extras_objectchange 
   TABLE DATA           ?   COPY public.extras_objectchange (id, "time", user_name, request_id, action, changed_object_id, related_object_id, object_repr, object_data, changed_object_type_id, related_object_type_id, user_id) FROM stdin;
    public          netbox    false    329   F?      ?          0    21086 
   extras_tag 
   TABLE DATA           _   COPY public.extras_tag (id, name, slug, color, description, created, last_updated) FROM stdin;
    public          netbox    false    331   ?      ?          0    21091    extras_taggeditem 
   TABLE DATA           S   COPY public.extras_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          netbox    false    333   s?      ?          0    21096    extras_webhook 
   TABLE DATA           ?   COPY public.extras_webhook (id, name, type_create, type_update, type_delete, payload_url, http_content_type, secret, enabled, ssl_verification, ca_file_path, additional_headers, http_method, body_template) FROM stdin;
    public          netbox    false    335   ??      ?          0    21102    extras_webhook_content_types 
   TABLE DATA           V   COPY public.extras_webhook_content_types (id, webhook_id, contenttype_id) FROM stdin;
    public          netbox    false    336   ??      ?          0    21109    ipam_aggregate 
   TABLE DATA           ?   COPY public.ipam_aggregate (id, created, last_updated, prefix, date_added, description, rir_id, custom_field_data, tenant_id) FROM stdin;
    public          netbox    false    339   ʝ      ?          0    21117    ipam_ipaddress 
   TABLE DATA           ?   COPY public.ipam_ipaddress (id, created, last_updated, address, description, assigned_object_id, nat_inside_id, vrf_id, tenant_id, status, role, dns_name, assigned_object_type_id, custom_field_data) FROM stdin;
    public          netbox    false    341   ??      ?          0    21126    ipam_prefix 
   TABLE DATA           ?   COPY public.ipam_prefix (id, created, last_updated, prefix, status, description, role_id, site_id, vlan_id, vrf_id, tenant_id, is_pool, custom_field_data) FROM stdin;
    public          netbox    false    343   ?      ?          0    21134    ipam_rir 
   TABLE DATA           b   COPY public.ipam_rir (id, name, slug, is_private, created, last_updated, description) FROM stdin;
    public          netbox    false    345   !?      ?          0    21139 	   ipam_role 
   TABLE DATA           _   COPY public.ipam_role (id, name, slug, weight, created, last_updated, description) FROM stdin;
    public          netbox    false    347   >?      ?          0    21145    ipam_routetarget 
   TABLE DATA           v   COPY public.ipam_routetarget (id, created, last_updated, custom_field_data, name, description, tenant_id) FROM stdin;
    public          netbox    false    349   [?      ?          0    21153    ipam_service 
   TABLE DATA           ?   COPY public.ipam_service (id, created, last_updated, name, protocol, description, device_id, virtual_machine_id, custom_field_data, ports) FROM stdin;
    public          netbox    false    351   x?      ?          0    21161    ipam_service_ipaddresses 
   TABLE DATA           P   COPY public.ipam_service_ipaddresses (id, service_id, ipaddress_id) FROM stdin;
    public          netbox    false    353   ??      ?          0    21166 	   ipam_vlan 
   TABLE DATA           ?   COPY public.ipam_vlan (id, created, last_updated, vid, name, status, role_id, site_id, group_id, description, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    355   ??      ?          0    21175    ipam_vlangroup 
   TABLE DATA           e   COPY public.ipam_vlangroup (id, name, slug, site_id, created, last_updated, description) FROM stdin;
    public          netbox    false    357   Ϟ      ?          0    21180    ipam_vrf 
   TABLE DATA           ?   COPY public.ipam_vrf (id, created, last_updated, name, rd, description, enforce_unique, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    359   ??      ?          0    21186    ipam_vrf_export_targets 
   TABLE DATA           M   COPY public.ipam_vrf_export_targets (id, vrf_id, routetarget_id) FROM stdin;
    public          netbox    false    360   	?      ?          0    21193    ipam_vrf_import_targets 
   TABLE DATA           M   COPY public.ipam_vrf_import_targets (id, vrf_id, routetarget_id) FROM stdin;
    public          netbox    false    363   &?      ?          0    21198    secrets_secret 
   TABLE DATA           ?   COPY public.secrets_secret (id, created, last_updated, name, ciphertext, hash, role_id, custom_field_data, assigned_object_id, assigned_object_type_id) FROM stdin;
    public          netbox    false    365   C?      ?          0    21207    secrets_secretrole 
   TABLE DATA           `   COPY public.secrets_secretrole (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    367   `?      ?          0    21212    secrets_sessionkey 
   TABLE DATA           S   COPY public.secrets_sessionkey (id, cipher, hash, created, userkey_id) FROM stdin;
    public          netbox    false    369   }?      ?          0    21220    secrets_userkey 
   TABLE DATA           l   COPY public.secrets_userkey (id, created, last_updated, public_key, master_key_cipher, user_id) FROM stdin;
    public          netbox    false    371   ??      ?          0    21228 
   taggit_tag 
   TABLE DATA           4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public          netbox    false    373   ??      ?          0    21233    taggit_taggeditem 
   TABLE DATA           S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          netbox    false    375   ԟ      ?          0    21238    tenancy_tenant 
   TABLE DATA           ?   COPY public.tenancy_tenant (id, created, last_updated, name, slug, description, comments, group_id, custom_field_data) FROM stdin;
    public          netbox    false    377   ??      ?          0    21246    tenancy_tenantgroup 
   TABLE DATA           ?   COPY public.tenancy_tenantgroup (id, name, slug, created, last_updated, parent_id, level, lft, rght, tree_id, description) FROM stdin;
    public          netbox    false    379   ?      ?          0    21255    users_objectpermission 
   TABLE DATA           f   COPY public.users_objectpermission (id, name, description, enabled, constraints, actions) FROM stdin;
    public          netbox    false    381   +?      ?          0    21261    users_objectpermission_groups 
   TABLE DATA           Z   COPY public.users_objectpermission_groups (id, objectpermission_id, group_id) FROM stdin;
    public          netbox    false    382   H?      ?          0    21268 #   users_objectpermission_object_types 
   TABLE DATA           f   COPY public.users_objectpermission_object_types (id, objectpermission_id, contenttype_id) FROM stdin;
    public          netbox    false    385   e?      ?          0    21273    users_objectpermission_users 
   TABLE DATA           X   COPY public.users_objectpermission_users (id, objectpermission_id, user_id) FROM stdin;
    public          netbox    false    387   ??      ?          0    21278    users_token 
   TABLE DATA           e   COPY public.users_token (id, created, expires, key, write_enabled, description, user_id) FROM stdin;
    public          netbox    false    389   ??      ?          0    21283    users_userconfig 
   TABLE DATA           =   COPY public.users_userconfig (id, data, user_id) FROM stdin;
    public          netbox    false    391   ??      ?          0    21291    virtualization_cluster 
   TABLE DATA           ?   COPY public.virtualization_cluster (id, created, last_updated, name, comments, group_id, type_id, site_id, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    393   ?      ?          0    21299    virtualization_clustergroup 
   TABLE DATA           i   COPY public.virtualization_clustergroup (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    395   /?      ?          0    21304    virtualization_clustertype 
   TABLE DATA           h   COPY public.virtualization_clustertype (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    397   L?                 0    21309    virtualization_virtualmachine 
   TABLE DATA           ?   COPY public.virtualization_virtualmachine (id, created, last_updated, name, vcpus, memory, disk, comments, cluster_id, platform_id, primary_ip4_id, primary_ip6_id, tenant_id, status, role_id, local_context_data, custom_field_data) FROM stdin;
    public          netbox    false    399   i?                0    21320    virtualization_vminterface 
   TABLE DATA           ?   COPY public.virtualization_vminterface (id, name, _name, enabled, mac_address, mtu, mode, description, untagged_vlan_id, virtual_machine_id) FROM stdin;
    public          netbox    false    401   ??                0    21326 '   virtualization_vminterface_tagged_vlans 
   TABLE DATA           ^   COPY public.virtualization_vminterface_tagged_vlans (id, vminterface_id, vlan_id) FROM stdin;
    public          netbox    false    403   ??      r           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          netbox    false    203            s           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          netbox    false    205            t           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 332, true);
          public          netbox    false    207            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          netbox    false    210            v           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          netbox    false    211            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          netbox    false    213            x           0    0    circuits_circuit_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.circuits_circuit_id_seq', 1, false);
          public          netbox    false    215            y           0    0 "   circuits_circuittermination_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.circuits_circuittermination_id_seq', 1, false);
          public          netbox    false    217            z           0    0    circuits_circuittype_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.circuits_circuittype_id_seq', 1, false);
          public          netbox    false    219            {           0    0    circuits_provider_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.circuits_provider_id_seq', 1, false);
          public          netbox    false    221            |           0    0    dcim_cable_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dcim_cable_id_seq', 1, false);
          public          netbox    false    223            }           0    0    dcim_cablepath_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_cablepath_id_seq', 1, false);
          public          netbox    false    225            ~           0    0    dcim_consoleport_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dcim_consoleport_id_seq', 1, false);
          public          netbox    false    227                       0    0    dcim_consoleporttemplate_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dcim_consoleporttemplate_id_seq', 1, false);
          public          netbox    false    229            ?           0    0    dcim_consoleserverport_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_consoleserverport_id_seq', 1, false);
          public          netbox    false    231            ?           0    0 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.dcim_consoleserverporttemplate_id_seq', 1, false);
          public          netbox    false    233            ?           0    0    dcim_device_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_device_id_seq', 1, false);
          public          netbox    false    235            ?           0    0    dcim_devicebay_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_devicebay_id_seq', 1, false);
          public          netbox    false    237            ?           0    0    dcim_devicebaytemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_devicebaytemplate_id_seq', 1, false);
          public          netbox    false    239            ?           0    0    dcim_devicerole_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_devicerole_id_seq', 1, false);
          public          netbox    false    241            ?           0    0    dcim_devicetype_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_devicetype_id_seq', 1, false);
          public          netbox    false    243            ?           0    0    dcim_frontport_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_frontport_id_seq', 1, false);
          public          netbox    false    245            ?           0    0    dcim_frontporttemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_frontporttemplate_id_seq', 1, false);
          public          netbox    false    247            ?           0    0    dcim_interface_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_interface_id_seq', 1, false);
          public          netbox    false    249            ?           0    0 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.dcim_interface_tagged_vlans_id_seq', 1, false);
          public          netbox    false    251            ?           0    0    dcim_interfacetemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_interfacetemplate_id_seq', 1, false);
          public          netbox    false    253            ?           0    0    dcim_manufacturer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.dcim_manufacturer_id_seq', 1, false);
          public          netbox    false    256            ?           0    0    dcim_module_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_module_id_seq', 1, false);
          public          netbox    false    257            ?           0    0    dcim_platform_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_platform_id_seq', 1, false);
          public          netbox    false    259            ?           0    0    dcim_powerfeed_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_powerfeed_id_seq', 1, false);
          public          netbox    false    261            ?           0    0    dcim_poweroutlet_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dcim_poweroutlet_id_seq', 1, false);
          public          netbox    false    263            ?           0    0    dcim_poweroutlettemplate_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dcim_poweroutlettemplate_id_seq', 1, false);
          public          netbox    false    265            ?           0    0    dcim_powerpanel_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_powerpanel_id_seq', 1, false);
          public          netbox    false    267            ?           0    0    dcim_powerport_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_powerport_id_seq', 1, false);
          public          netbox    false    269            ?           0    0    dcim_powerporttemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_powerporttemplate_id_seq', 1, false);
          public          netbox    false    271            ?           0    0    dcim_rack_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dcim_rack_id_seq', 1, false);
          public          netbox    false    273            ?           0    0    dcim_rackgroup_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_rackgroup_id_seq', 1, false);
          public          netbox    false    275            ?           0    0    dcim_rackreservation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.dcim_rackreservation_id_seq', 1, false);
          public          netbox    false    277            ?           0    0    dcim_rackrole_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_rackrole_id_seq', 1, false);
          public          netbox    false    279            ?           0    0    dcim_rearport_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_rearport_id_seq', 1, false);
          public          netbox    false    281            ?           0    0    dcim_rearporttemplate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dcim_rearporttemplate_id_seq', 1, false);
          public          netbox    false    283            ?           0    0    dcim_region_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_region_id_seq', 1, false);
          public          netbox    false    285            ?           0    0    dcim_site_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dcim_site_id_seq', 1, false);
          public          netbox    false    287            ?           0    0    dcim_virtualchassis_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dcim_virtualchassis_id_seq', 1, false);
          public          netbox    false    289            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          netbox    false    291            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 84, true);
          public          netbox    false    293            ?           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 316, true);
          public          netbox    false    295            ?           0    0 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.extras_configcontext_cluster_groups_id_seq', 1, false);
          public          netbox    false    299            ?           0    0 $   extras_configcontext_clusters_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.extras_configcontext_clusters_id_seq', 1, false);
          public          netbox    false    301            ?           0    0    extras_configcontext_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.extras_configcontext_id_seq', 1, false);
          public          netbox    false    302            ?           0    0 %   extras_configcontext_platforms_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.extras_configcontext_platforms_id_seq', 1, false);
          public          netbox    false    304            ?           0    0 #   extras_configcontext_regions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.extras_configcontext_regions_id_seq', 1, false);
          public          netbox    false    306            ?           0    0 !   extras_configcontext_roles_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.extras_configcontext_roles_id_seq', 1, false);
          public          netbox    false    308            ?           0    0 !   extras_configcontext_sites_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.extras_configcontext_sites_id_seq', 1, false);
          public          netbox    false    310            ?           0    0     extras_configcontext_tags_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.extras_configcontext_tags_id_seq', 1, false);
          public          netbox    false    312            ?           0    0 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.extras_configcontext_tenant_groups_id_seq', 1, false);
          public          netbox    false    314            ?           0    0 #   extras_configcontext_tenants_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.extras_configcontext_tenants_id_seq', 1, false);
          public          netbox    false    316            ?           0    0    extras_customfield_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.extras_customfield_id_seq', 1, false);
          public          netbox    false    319            ?           0    0 "   extras_customfield_obj_type_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.extras_customfield_obj_type_id_seq', 1, false);
          public          netbox    false    320            ?           0    0    extras_customlink_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.extras_customlink_id_seq', 1, false);
          public          netbox    false    322            ?           0    0    extras_exporttemplate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.extras_exporttemplate_id_seq', 1, false);
          public          netbox    false    324            ?           0    0    extras_imageattachment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.extras_imageattachment_id_seq', 1, false);
          public          netbox    false    326            ?           0    0    extras_jobresult_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.extras_jobresult_id_seq', 1, false);
          public          netbox    false    328            ?           0    0    extras_objectchange_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.extras_objectchange_id_seq', 1, true);
          public          netbox    false    330            ?           0    0    extras_tag_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.extras_tag_id_seq', 1, true);
          public          netbox    false    332            ?           0    0    extras_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.extras_taggeditem_id_seq', 1, false);
          public          netbox    false    334            ?           0    0    extras_webhook_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.extras_webhook_id_seq', 1, false);
          public          netbox    false    337            ?           0    0    extras_webhook_obj_type_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.extras_webhook_obj_type_id_seq', 1, false);
          public          netbox    false    338            ?           0    0    ipam_aggregate_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_aggregate_id_seq', 1, false);
          public          netbox    false    340            ?           0    0    ipam_ipaddress_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_ipaddress_id_seq', 1, false);
          public          netbox    false    342            ?           0    0    ipam_prefix_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ipam_prefix_id_seq', 1, false);
          public          netbox    false    344            ?           0    0    ipam_rir_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ipam_rir_id_seq', 1, false);
          public          netbox    false    346            ?           0    0    ipam_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ipam_role_id_seq', 1, false);
          public          netbox    false    348            ?           0    0    ipam_routetarget_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ipam_routetarget_id_seq', 1, false);
          public          netbox    false    350            ?           0    0    ipam_service_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ipam_service_id_seq', 1, false);
          public          netbox    false    352            ?           0    0    ipam_service_ipaddresses_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ipam_service_ipaddresses_id_seq', 1, false);
          public          netbox    false    354            ?           0    0    ipam_vlan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ipam_vlan_id_seq', 1, false);
          public          netbox    false    356            ?           0    0    ipam_vlangroup_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_vlangroup_id_seq', 1, false);
          public          netbox    false    358            ?           0    0    ipam_vrf_export_targets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ipam_vrf_export_targets_id_seq', 1, false);
          public          netbox    false    361            ?           0    0    ipam_vrf_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ipam_vrf_id_seq', 1, false);
          public          netbox    false    362            ?           0    0    ipam_vrf_import_targets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ipam_vrf_import_targets_id_seq', 1, false);
          public          netbox    false    364            ?           0    0    secrets_secret_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.secrets_secret_id_seq', 1, false);
          public          netbox    false    366            ?           0    0    secrets_secretrole_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.secrets_secretrole_id_seq', 1, false);
          public          netbox    false    368            ?           0    0    secrets_sessionkey_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.secrets_sessionkey_id_seq', 1, false);
          public          netbox    false    370            ?           0    0    secrets_userkey_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.secrets_userkey_id_seq', 1, false);
          public          netbox    false    372            ?           0    0    taggit_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);
          public          netbox    false    374            ?           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);
          public          netbox    false    376            ?           0    0    tenancy_tenant_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tenancy_tenant_id_seq', 1, false);
          public          netbox    false    378            ?           0    0    tenancy_tenantgroup_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tenancy_tenantgroup_id_seq', 1, false);
          public          netbox    false    380            ?           0    0 $   users_objectpermission_groups_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.users_objectpermission_groups_id_seq', 1, false);
          public          netbox    false    383            ?           0    0    users_objectpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.users_objectpermission_id_seq', 1, false);
          public          netbox    false    384            ?           0    0 *   users_objectpermission_object_types_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.users_objectpermission_object_types_id_seq', 1, false);
          public          netbox    false    386            ?           0    0 #   users_objectpermission_users_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.users_objectpermission_users_id_seq', 1, false);
          public          netbox    false    388            ?           0    0    users_token_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_token_id_seq', 1, true);
          public          netbox    false    390            ?           0    0    users_userconfig_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.users_userconfig_id_seq', 1, true);
          public          netbox    false    392            ?           0    0    virtualization_cluster_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.virtualization_cluster_id_seq', 1, false);
          public          netbox    false    394            ?           0    0 "   virtualization_clustergroup_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.virtualization_clustergroup_id_seq', 1, false);
          public          netbox    false    396            ?           0    0 !   virtualization_clustertype_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.virtualization_clustertype_id_seq', 1, false);
          public          netbox    false    398            ?           0    0 $   virtualization_virtualmachine_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.virtualization_virtualmachine_id_seq', 1, false);
          public          netbox    false    400            ?           0    0 !   virtualization_vminterface_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.virtualization_vminterface_id_seq', 1, false);
          public          netbox    false    402            ?           0    0 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.virtualization_vminterface_tagged_vlans_id_seq', 1, false);
          public          netbox    false    404            C           2606    21433    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            netbox    false    202            H           2606    21435 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            netbox    false    204    204            K           2606    21437 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            netbox    false    204            E           2606    21439    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            netbox    false    202            N           2606    21441 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            netbox    false    206    206            P           2606    21443 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            netbox    false    206            X           2606    21445 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            netbox    false    209            [           2606    21447 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            netbox    false    209    209            R           2606    21449    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            netbox    false    208            ^           2606    21451 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            netbox    false    212            a           2606    21453 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            netbox    false    212    212            U           2606    21455     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            netbox    false    208            c           2606    21457 &   circuits_circuit circuits_circuit_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_pkey;
       public            netbox    false    214            e           2606    21459 ?   circuits_circuit circuits_circuit_provider_id_cid_b6f29862_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_cid_b6f29862_uniq UNIQUE (provider_id, cid);
 i   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_provider_id_cid_b6f29862_uniq;
       public            netbox    false    214    214            n           2606    21461 Z   circuits_circuittermination circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq UNIQUE (circuit_id, term_side);
 ?   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq;
       public            netbox    false    216    216            p           2606    21463 <   circuits_circuittermination circuits_circuittermination_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_pkey;
       public            netbox    false    216            t           2606    21465 2   circuits_circuittype circuits_circuittype_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_name_key;
       public            netbox    false    218            v           2606    21467 .   circuits_circuittype circuits_circuittype_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_pkey;
       public            netbox    false    218            y           2606    21469 2   circuits_circuittype circuits_circuittype_slug_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_slug_key UNIQUE (slug);
 \   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_slug_key;
       public            netbox    false    218            |           2606    21471 ,   circuits_provider circuits_provider_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_name_key;
       public            netbox    false    220            ~           2606    21473 (   circuits_provider circuits_provider_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_pkey;
       public            netbox    false    220            ?           2606    21475 ,   circuits_provider circuits_provider_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_slug_key;
       public            netbox    false    220            ?           2606    21477    dcim_cable dcim_cable_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_pkey;
       public            netbox    false    222            ?           2606    21479 J   dcim_cable dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq UNIQUE (termination_a_type_id, termination_a_id);
 t   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq;
       public            netbox    false    222    222            ?           2606    21481 J   dcim_cable dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq UNIQUE (termination_b_type_id, termination_b_id);
 t   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq;
       public            netbox    false    222    222            ?           2606    21483 D   dcim_cablepath dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq UNIQUE (origin_type_id, origin_id);
 n   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq;
       public            netbox    false    224    224            ?           2606    21485 "   dcim_cablepath dcim_cablepath_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_pkey;
       public            netbox    false    224            ?           2606    21487 >   dcim_consoleport dcim_consoleport_device_id_name_293786b6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_name_293786b6_uniq UNIQUE (device_id, name);
 h   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_device_id_name_293786b6_uniq;
       public            netbox    false    226    226            ?           2606    21489 &   dcim_consoleport dcim_consoleport_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_pkey;
       public            netbox    false    226            ?           2606    21491 S   dcim_consoleporttemplate dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq UNIQUE (device_type_id, name);
 }   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq;
       public            netbox    false    228    228            ?           2606    21493 6   dcim_consoleporttemplate dcim_consoleporttemplate_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemplate_pkey;
       public            netbox    false    228            ?           2606    21495 J   dcim_consoleserverport dcim_consoleserverport_device_id_name_fb1c5999_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_name_fb1c5999_uniq UNIQUE (device_id, name);
 t   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_device_id_name_fb1c5999_uniq;
       public            netbox    false    230    230            ?           2606    21497 2   dcim_consoleserverport dcim_consoleserverport_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_pkey;
       public            netbox    false    230            ?           2606    21499 Y   dcim_consoleserverporttemplate dcim_consoleserverportte_device_type_id_name_a05c974d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverportte_device_type_id_name_a05c974d_uniq UNIQUE (device_type_id, name);
 ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverportte_device_type_id_name_a05c974d_uniq;
       public            netbox    false    232    232            ?           2606    21501 B   dcim_consoleserverporttemplate dcim_consoleserverporttemplate_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverporttemplate_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverporttemplate_pkey;
       public            netbox    false    232            ?           2606    21503 %   dcim_device dcim_device_asset_tag_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_asset_tag_key UNIQUE (asset_tag);
 O   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_asset_tag_key;
       public            netbox    false    234            ?           2606    21505    dcim_device dcim_device_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_pkey;
       public            netbox    false    234            ?           2606    21507 *   dcim_device dcim_device_primary_ip4_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_key UNIQUE (primary_ip4_id);
 T   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip4_id_key;
       public            netbox    false    234            ?           2606    21509 *   dcim_device dcim_device_primary_ip6_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_key UNIQUE (primary_ip6_id);
 T   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip6_id_key;
       public            netbox    false    234            ?           2606    21511 ;   dcim_device dcim_device_rack_id_position_face_43208a79_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_position_face_43208a79_uniq UNIQUE (rack_id, "position", face);
 e   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_rack_id_position_face_43208a79_uniq;
       public            netbox    false    234    234    234            ?           2606    21513 <   dcim_device dcim_device_site_id_tenant_id_name_93f4f962_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_tenant_id_name_93f4f962_uniq UNIQUE (site_id, tenant_id, name);
 f   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_site_id_tenant_id_name_93f4f962_uniq;
       public            netbox    false    234    234    234            ?           2606    21515 D   dcim_device dcim_device_virtual_chassis_id_vc_position_efea7133_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_vc_position_efea7133_uniq UNIQUE (virtual_chassis_id, vc_position);
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_virtual_chassis_id_vc_position_efea7133_uniq;
       public            netbox    false    234    234            ?           2606    21517 :   dcim_devicebay dcim_devicebay_device_id_name_2475a67b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_name_2475a67b_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_device_id_name_2475a67b_uniq;
       public            netbox    false    236    236            ?           2606    21519 5   dcim_devicebay dcim_devicebay_installed_device_id_key 
   CONSTRAINT        ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_key UNIQUE (installed_device_id);
 _   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_installed_device_id_key;
       public            netbox    false    236            ?           2606    21521 "   dcim_devicebay dcim_devicebay_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_pkey;
       public            netbox    false    236            ?           2606    21523 O   dcim_devicebaytemplate dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq;
       public            netbox    false    238    238            ?           2606    21525 2   dcim_devicebaytemplate dcim_devicebaytemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytemplate_pkey;
       public            netbox    false    238            ?           2606    21527 (   dcim_devicerole dcim_devicerole_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_name_key;
       public            netbox    false    240            ?           2606    21529 $   dcim_devicerole dcim_devicerole_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_pkey;
       public            netbox    false    240            ?           2606    21531 (   dcim_devicerole dcim_devicerole_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_slug_key;
       public            netbox    false    240            ?           2606    21533 C   dcim_devicetype dcim_devicetype_manufacturer_id_model_17948c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_model_17948c0c_uniq UNIQUE (manufacturer_id, model);
 m   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_model_17948c0c_uniq;
       public            netbox    false    242    242            ?           2606    21535 B   dcim_devicetype dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq UNIQUE (manufacturer_id, slug);
 l   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq;
       public            netbox    false    242    242            ?           2606    21537 $   dcim_devicetype dcim_devicetype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_pkey;
       public            netbox    false    242            ?           2606    21539 :   dcim_frontport dcim_frontport_device_id_name_235b7af2_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_name_235b7af2_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_device_id_name_235b7af2_uniq;
       public            netbox    false    244    244            ?           2606    21541 "   dcim_frontport dcim_frontport_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_pkey;
       public            netbox    false    244            ?           2606    21543 K   dcim_frontport dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq UNIQUE (rear_port_id, rear_port_position);
 u   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq;
       public            netbox    false    244    244            ?           2606    21545 O   dcim_frontporttemplate dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq;
       public            netbox    false    246    246            ?           2606    21547 2   dcim_frontporttemplate dcim_frontporttemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_pkey;
       public            netbox    false    246            ?           2606    21549 T   dcim_frontporttemplate dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq UNIQUE (rear_port_id, rear_port_position);
 ~   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq;
       public            netbox    false    246    246            ?           2606    21551 :   dcim_interface dcim_interface_device_id_name_bffc4ec4_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_name_bffc4ec4_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_device_id_name_bffc4ec4_uniq;
       public            netbox    false    248    248            ?           2606    21553 "   dcim_interface dcim_interface_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_pkey;
       public            netbox    false    248            ?           2606    21555 Z   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq UNIQUE (interface_id, vlan_id);
 ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq;
       public            netbox    false    250    250                        2606    21557 <   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_pkey;
       public            netbox    false    250                       2606    21559 O   dcim_interfacetemplate dcim_interfacetemplate_device_type_id_name_3a847237_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_device_type_id_name_3a847237_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetemplate_device_type_id_name_3a847237_uniq;
       public            netbox    false    252    252                       2606    21561 2   dcim_interfacetemplate dcim_interfacetemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetemplate_pkey;
       public            netbox    false    252            	           2606    21563 3   dcim_inventoryitem dcim_inventoryitem_asset_tag_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_asset_tag_key UNIQUE (asset_tag);
 ]   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_asset_tag_key;
       public            netbox    false    254                       2606    21565 ,   dcim_manufacturer dcim_manufacturer_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_name_key;
       public            netbox    false    255                       2606    21567 (   dcim_manufacturer dcim_manufacturer_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_pkey;
       public            netbox    false    255                       2606    21569 ,   dcim_manufacturer dcim_manufacturer_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_slug_key;
       public            netbox    false    255                       2606    21571 E   dcim_inventoryitem dcim_module_device_id_parent_id_name_4d8292af_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_module_device_id_parent_id_name_4d8292af_uniq UNIQUE (device_id, parent_id, name);
 o   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_module_device_id_parent_id_name_4d8292af_uniq;
       public            netbox    false    254    254    254                       2606    21573 #   dcim_inventoryitem dcim_module_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_module_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_module_pkey;
       public            netbox    false    254                       2606    21575 $   dcim_platform dcim_platform_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_name_key;
       public            netbox    false    258                       2606    21577     dcim_platform dcim_platform_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_pkey;
       public            netbox    false    258            "           2606    21579 $   dcim_platform dcim_platform_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_slug_key;
       public            netbox    false    258            '           2606    21581 "   dcim_powerfeed dcim_powerfeed_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_pkey;
       public            netbox    false    260            *           2606    21583 ?   dcim_powerfeed dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq UNIQUE (power_panel_id, name);
 i   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq;
       public            netbox    false    260    260            1           2606    21585 >   dcim_poweroutlet dcim_poweroutlet_device_id_name_981b00c1_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_name_981b00c1_uniq UNIQUE (device_id, name);
 h   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_device_id_name_981b00c1_uniq;
       public            netbox    false    262    262            3           2606    21587 &   dcim_poweroutlet dcim_poweroutlet_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_pkey;
       public            netbox    false    262            7           2606    21589 S   dcim_poweroutlettemplate dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq UNIQUE (device_type_id, name);
 }   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq;
       public            netbox    false    264    264            9           2606    21591 6   dcim_poweroutlettemplate dcim_poweroutlettemplate_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemplate_pkey;
       public            netbox    false    264            <           2606    21593 $   dcim_powerpanel dcim_powerpanel_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_pkey;
       public            netbox    false    266            @           2606    21595 :   dcim_powerpanel dcim_powerpanel_site_id_name_804df4c0_uniq 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_name_804df4c0_uniq UNIQUE (site_id, name);
 d   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_site_id_name_804df4c0_uniq;
       public            netbox    false    266    266            F           2606    21597 :   dcim_powerport dcim_powerport_device_id_name_948af82c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_name_948af82c_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_device_id_name_948af82c_uniq;
       public            netbox    false    268    268            H           2606    21599 "   dcim_powerport dcim_powerport_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_pkey;
       public            netbox    false    268            K           2606    21601 O   dcim_powerporttemplate dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq;
       public            netbox    false    270    270            M           2606    21603 2   dcim_powerporttemplate dcim_powerporttemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttemplate_pkey;
       public            netbox    false    270            P           2606    21605 !   dcim_rack dcim_rack_asset_tag_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_asset_tag_key UNIQUE (asset_tag);
 K   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_asset_tag_key;
       public            netbox    false    272            S           2606    21607 6   dcim_rack dcim_rack_group_id_facility_id_f16a53ae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_facility_id_f16a53ae_uniq UNIQUE (group_id, facility_id);
 `   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_facility_id_f16a53ae_uniq;
       public            netbox    false    272    272            U           2606    21609 /   dcim_rack dcim_rack_group_id_name_846f3826_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_name_846f3826_uniq UNIQUE (group_id, name);
 Y   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_name_846f3826_uniq;
       public            netbox    false    272    272            W           2606    21611    dcim_rack dcim_rack_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_pkey;
       public            netbox    false    272            ]           2606    21613 "   dcim_rackgroup dcim_rackgroup_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_pkey;
       public            netbox    false    274            `           2606    21615 8   dcim_rackgroup dcim_rackgroup_site_id_name_c9bd921f_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_name_c9bd921f_uniq UNIQUE (site_id, name);
 b   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_name_c9bd921f_uniq;
       public            netbox    false    274    274            b           2606    21617 8   dcim_rackgroup dcim_rackgroup_site_id_slug_7fbfd118_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_slug_7fbfd118_uniq UNIQUE (site_id, slug);
 b   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_slug_7fbfd118_uniq;
       public            netbox    false    274    274            g           2606    21619 .   dcim_rackreservation dcim_rackreservation_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_pkey;
       public            netbox    false    276            m           2606    21621 $   dcim_rackrole dcim_rackrole_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_name_key;
       public            netbox    false    278            o           2606    21623     dcim_rackrole dcim_rackrole_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_pkey;
       public            netbox    false    278            r           2606    21625 $   dcim_rackrole dcim_rackrole_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_slug_key;
       public            netbox    false    278            w           2606    21627 8   dcim_rearport dcim_rearport_device_id_name_4b14dde6_uniq 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_name_4b14dde6_uniq UNIQUE (device_id, name);
 b   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_device_id_name_4b14dde6_uniq;
       public            netbox    false    280    280            y           2606    21629     dcim_rearport dcim_rearport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_pkey;
       public            netbox    false    280            |           2606    21631 M   dcim_rearporttemplate dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq UNIQUE (device_type_id, name);
 w   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq;
       public            netbox    false    282    282            ~           2606    21633 0   dcim_rearporttemplate dcim_rearporttemplate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplate_pkey;
       public            netbox    false    282            ?           2606    21635     dcim_region dcim_region_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_name_key;
       public            netbox    false    284            ?           2606    21637    dcim_region dcim_region_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_pkey;
       public            netbox    false    284            ?           2606    21639     dcim_region dcim_region_slug_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_slug_key UNIQUE (slug);
 J   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_slug_key;
       public            netbox    false    284            ?           2606    21641    dcim_site dcim_site_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_name_key;
       public            netbox    false    286            ?           2606    21643    dcim_site dcim_site_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_pkey;
       public            netbox    false    286            ?           2606    21645    dcim_site dcim_site_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_slug_key;
       public            netbox    false    286            ?           2606    21647 5   dcim_virtualchassis dcim_virtualchassis_master_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_key UNIQUE (master_id);
 _   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_master_id_key;
       public            netbox    false    288            ?           2606    21649 ,   dcim_virtualchassis dcim_virtualchassis_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_pkey;
       public            netbox    false    288            ?           2606    21651 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            netbox    false    290            ?           2606    21653 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            netbox    false    292    292            ?           2606    21655 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            netbox    false    292            ?           2606    21657 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            netbox    false    294            ?           2606    21659 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            netbox    false    296            ?           2606    21661 ]   extras_configcontext_clusters extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq UNIQUE (configcontext_id, cluster_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq;
       public            netbox    false    300    300            ?           2606    21663 c   extras_configcontext_cluster_groups extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq UNIQUE (configcontext_id, clustergroup_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq;
       public            netbox    false    298    298            ?           2606    21665 L   extras_configcontext_cluster_groups extras_configcontext_cluster_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_cluster_groups_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_cluster_groups_pkey;
       public            netbox    false    298            ?           2606    21667 @   extras_configcontext_clusters extras_configcontext_clusters_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clusters_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_clusters_pkey;
       public            netbox    false    300            ?           2606    21669 2   extras_configcontext extras_configcontext_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.extras_configcontext DROP CONSTRAINT extras_configcontext_name_key;
       public            netbox    false    297            ?           2606    21671 .   extras_configcontext extras_configcontext_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.extras_configcontext DROP CONSTRAINT extras_configcontext_pkey;
       public            netbox    false    297            ?           2606    21673 ^   extras_configcontext_platforms extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq UNIQUE (configcontext_id, platform_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq;
       public            netbox    false    303    303            ?           2606    21675 B   extras_configcontext_platforms extras_configcontext_platforms_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platforms_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_platforms_pkey;
       public            netbox    false    303            ?           2606    21677 \   extras_configcontext_regions extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq UNIQUE (configcontext_id, region_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq;
       public            netbox    false    305    305            ?           2606    21679 >   extras_configcontext_regions extras_configcontext_regions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_regions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_regions_pkey;
       public            netbox    false    305            ?           2606    21681 Z   extras_configcontext_roles extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq UNIQUE (configcontext_id, devicerole_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq;
       public            netbox    false    307    307            ?           2606    21683 :   extras_configcontext_roles extras_configcontext_roles_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_roles_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_roles_pkey;
       public            netbox    false    307            ?           2606    21685 Z   extras_configcontext_sites extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq UNIQUE (configcontext_id, site_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq;
       public            netbox    false    309    309            ?           2606    21687 :   extras_configcontext_sites extras_configcontext_sites_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sites_pkey;
       public            netbox    false    309            ?           2606    21689 Y   extras_configcontext_tags extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq UNIQUE (configcontext_id, tag_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq;
       public            netbox    false    311    311            ?           2606    21691 8   extras_configcontext_tags extras_configcontext_tags_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_pkey;
       public            netbox    false    311            ?           2606    21693 \   extras_configcontext_tenants extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq UNIQUE (configcontext_id, tenant_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq;
       public            netbox    false    315    315            ?           2606    21695 b   extras_configcontext_tenant_groups extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq UNIQUE (configcontext_id, tenantgroup_id);
 ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq;
       public            netbox    false    313    313            ?           2606    21697 J   extras_configcontext_tenant_groups extras_configcontext_tenant_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenant_groups_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_tenant_groups_pkey;
       public            netbox    false    313            ?           2606    21699 >   extras_configcontext_tenants extras_configcontext_tenants_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenants_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_tenants_pkey;
       public            netbox    false    315            ?           2606    21701 .   extras_customfield extras_customfield_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.extras_customfield DROP CONSTRAINT extras_customfield_name_key;
       public            netbox    false    317            ?           2606    21703 `   extras_customfield_content_types extras_customfield_obj_t_customfield_id_contentty_77878958_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_obj_t_customfield_id_contentty_77878958_uniq UNIQUE (customfield_id, contenttype_id);
 ?   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_obj_t_customfield_id_contentty_77878958_uniq;
       public            netbox    false    318    318            ?           2606    21705 A   extras_customfield_content_types extras_customfield_obj_type_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_obj_type_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_obj_type_pkey;
       public            netbox    false    318            ?           2606    21707 *   extras_customfield extras_customfield_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.extras_customfield DROP CONSTRAINT extras_customfield_pkey;
       public            netbox    false    317            ?           2606    21709 ,   extras_customlink extras_customlink_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_name_key;
       public            netbox    false    321            ?           2606    21711 (   extras_customlink extras_customlink_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_pkey;
       public            netbox    false    321            ?           2606    21713 N   extras_exporttemplate extras_exporttemplate_content_type_id_name_edca9b9b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_content_type_id_name_edca9b9b_uniq UNIQUE (content_type_id, name);
 x   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplate_content_type_id_name_edca9b9b_uniq;
       public            netbox    false    323    323            ?           2606    21715 0   extras_exporttemplate extras_exporttemplate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplate_pkey;
       public            netbox    false    323            ?           2606    21717 2   extras_imageattachment extras_imageattachment_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachment_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.extras_imageattachment DROP CONSTRAINT extras_imageattachment_pkey;
       public            netbox    false    325            ?           2606    21719 ,   extras_jobresult extras_jobresult_job_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_job_id_key UNIQUE (job_id);
 V   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_job_id_key;
       public            netbox    false    327            ?           2606    21721 &   extras_jobresult extras_jobresult_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_pkey;
       public            netbox    false    327                       2606    21723 ,   extras_objectchange extras_objectchange_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_pkey;
       public            netbox    false    329                       2606    21725    extras_tag extras_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_name_key;
       public            netbox    false    331            	           2606    21727    extras_tag extras_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_pkey;
       public            netbox    false    331                       2606    21729    extras_tag extras_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_slug_key;
       public            netbox    false    331                       2606    21731 (   extras_taggeditem extras_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_pkey;
       public            netbox    false    333                       2606    21733 &   extras_webhook extras_webhook_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_name_key;
       public            netbox    false    335                       2606    21735 9   extras_webhook_content_types extras_webhook_obj_type_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_obj_type_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_obj_type_pkey;
       public            netbox    false    336                       2606    21737 \   extras_webhook_content_types extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq UNIQUE (webhook_id, contenttype_id);
 ?   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq;
       public            netbox    false    336    336                       2606    21739 D   extras_webhook extras_webhook_payload_url_type_create__dd332134_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_payload_url_type_create__dd332134_uniq UNIQUE (payload_url, type_create, type_update, type_delete);
 n   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_payload_url_type_create__dd332134_uniq;
       public            netbox    false    335    335    335    335                       2606    21741 "   extras_webhook extras_webhook_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_pkey;
       public            netbox    false    335            !           2606    21743 "   ipam_aggregate ipam_aggregate_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_pkey;
       public            netbox    false    339            &           2606    21745 /   ipam_ipaddress ipam_ipaddress_nat_inside_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_key UNIQUE (nat_inside_id);
 Y   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_nat_inside_id_key;
       public            netbox    false    341            (           2606    21747 "   ipam_ipaddress ipam_ipaddress_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_pkey;
       public            netbox    false    341            ,           2606    21749    ipam_prefix ipam_prefix_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_pkey;
       public            netbox    false    343            4           2606    21751    ipam_rir ipam_rir_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_name_key;
       public            netbox    false    345            6           2606    21753    ipam_rir ipam_rir_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_pkey;
       public            netbox    false    345            9           2606    21755    ipam_rir ipam_rir_slug_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_slug_key UNIQUE (slug);
 D   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_slug_key;
       public            netbox    false    345            <           2606    21757    ipam_role ipam_role_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_name_key;
       public            netbox    false    347            >           2606    21759    ipam_role ipam_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_pkey;
       public            netbox    false    347            A           2606    21761    ipam_role ipam_role_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_slug_key;
       public            netbox    false    347            D           2606    21763 *   ipam_routetarget ipam_routetarget_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_name_key;
       public            netbox    false    349            F           2606    21765 &   ipam_routetarget ipam_routetarget_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_pkey;
       public            netbox    false    349            N           2606    21767 6   ipam_service_ipaddresses ipam_service_ipaddresses_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_pkey;
       public            netbox    false    353            Q           2606    21769 W   ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq UNIQUE (service_id, ipaddress_id);
 ?   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq;
       public            netbox    false    353    353            J           2606    21771    ipam_service ipam_service_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_pkey;
       public            netbox    false    351            T           2606    21773 /   ipam_vlan ipam_vlan_group_id_name_e53919df_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_name_e53919df_uniq UNIQUE (group_id, name);
 Y   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_name_e53919df_uniq;
       public            netbox    false    355    355            V           2606    21775 .   ipam_vlan ipam_vlan_group_id_vid_5ca4cc47_uniq 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_vid_5ca4cc47_uniq UNIQUE (group_id, vid);
 X   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_vid_5ca4cc47_uniq;
       public            netbox    false    355    355            X           2606    21777    ipam_vlan ipam_vlan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_pkey;
       public            netbox    false    355            ]           2606    21779 "   ipam_vlangroup ipam_vlangroup_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_pkey;
       public            netbox    false    357            `           2606    21781 8   ipam_vlangroup ipam_vlangroup_site_id_name_a38e981b_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_name_a38e981b_uniq UNIQUE (site_id, name);
 b   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_name_a38e981b_uniq;
       public            netbox    false    357    357            b           2606    21783 8   ipam_vlangroup ipam_vlangroup_site_id_slug_6372a304_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_slug_6372a304_uniq UNIQUE (site_id, slug);
 b   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_slug_6372a304_uniq;
       public            netbox    false    357    357            l           2606    21785 4   ipam_vrf_export_targets ipam_vrf_export_targets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_pkey;
       public            netbox    false    360            p           2606    21787 S   ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq UNIQUE (vrf_id, routetarget_id);
 }   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq;
       public            netbox    false    360    360            r           2606    21789 4   ipam_vrf_import_targets ipam_vrf_import_targets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_pkey;
       public            netbox    false    363            v           2606    21791 S   ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq UNIQUE (vrf_id, routetarget_id);
 }   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq;
       public            netbox    false    363    363            f           2606    21793    ipam_vrf ipam_vrf_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_pkey;
       public            netbox    false    359            i           2606    21795    ipam_vrf ipam_vrf_rd_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_rd_key UNIQUE (rd);
 B   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_rd_key;
       public            netbox    false    359            y           2606    21797 D   secrets_secret secrets_secret_assigned_object_type_id__c3da11b2_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_assigned_object_type_id__c3da11b2_uniq UNIQUE (assigned_object_type_id, assigned_object_id, role_id, name);
 n   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_assigned_object_type_id__c3da11b2_uniq;
       public            netbox    false    365    365    365    365            {           2606    21799 "   secrets_secret secrets_secret_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_pkey;
       public            netbox    false    365                       2606    21801 .   secrets_secretrole secrets_secretrole_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_name_key;
       public            netbox    false    367            ?           2606    21803 *   secrets_secretrole secrets_secretrole_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_pkey;
       public            netbox    false    367            ?           2606    21805 .   secrets_secretrole secrets_secretrole_slug_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_slug_key UNIQUE (slug);
 X   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_slug_key;
       public            netbox    false    367            ?           2606    21807 *   secrets_sessionkey secrets_sessionkey_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_pkey;
       public            netbox    false    369            ?           2606    21809 4   secrets_sessionkey secrets_sessionkey_userkey_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_userkey_id_key UNIQUE (userkey_id);
 ^   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_userkey_id_key;
       public            netbox    false    369            ?           2606    21811 $   secrets_userkey secrets_userkey_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_pkey;
       public            netbox    false    371            ?           2606    21813 +   secrets_userkey secrets_userkey_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_user_id_key;
       public            netbox    false    371            ?           2606    21815    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public            netbox    false    373            ?           2606    21817    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public            netbox    false    373            ?           2606    21819    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public            netbox    false    373            ?           2606    21821 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public            netbox    false    375    375    375            ?           2606    21823 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public            netbox    false    375            ?           2606    21825 &   tenancy_tenant tenancy_tenant_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_name_key;
       public            netbox    false    377            ?           2606    21827 "   tenancy_tenant tenancy_tenant_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_pkey;
       public            netbox    false    377            ?           2606    21829 &   tenancy_tenant tenancy_tenant_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_slug_key;
       public            netbox    false    377            ?           2606    21831 0   tenancy_tenantgroup tenancy_tenantgroup_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_name_key;
       public            netbox    false    379            ?           2606    21833 ,   tenancy_tenantgroup tenancy_tenantgroup_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_pkey;
       public            netbox    false    379            ?           2606    21835 0   tenancy_tenantgroup tenancy_tenantgroup_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_slug_key;
       public            netbox    false    379            ?           2606    21837 ]   users_objectpermission_groups users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq UNIQUE (objectpermission_id, group_id);
 ?   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq;
       public            netbox    false    382    382            ?           2606    21839 @   users_objectpermission_groups users_objectpermission_groups_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_groups_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermission_groups_pkey;
       public            netbox    false    382            ?           2606    21841 c   users_objectpermission_object_types users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq UNIQUE (objectpermission_id, contenttype_id);
 ?   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq;
       public            netbox    false    385    385            ?           2606    21843 L   users_objectpermission_object_types users_objectpermission_object_types_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_object_types_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermission_object_types_pkey;
       public            netbox    false    385            ?           2606    21845 2   users_objectpermission users_objectpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.users_objectpermission
    ADD CONSTRAINT users_objectpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.users_objectpermission DROP CONSTRAINT users_objectpermission_pkey;
       public            netbox    false    381            ?           2606    21847 \   users_objectpermission_users users_objectpermission_u_objectpermission_id_user_3a7db108_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_u_objectpermission_id_user_3a7db108_uniq UNIQUE (objectpermission_id, user_id);
 ?   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_u_objectpermission_id_user_3a7db108_uniq;
       public            netbox    false    387    387            ?           2606    21849 >   users_objectpermission_users users_objectpermission_users_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_users_pkey;
       public            netbox    false    387            ?           2606    21851    users_token users_token_key_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_key_key UNIQUE (key);
 I   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_key_key;
       public            netbox    false    389            ?           2606    21853    users_token users_token_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_pkey;
       public            netbox    false    389            ?           2606    21855 &   users_userconfig users_userconfig_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_pkey;
       public            netbox    false    391            ?           2606    21857 -   users_userconfig users_userconfig_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_user_id_key;
       public            netbox    false    391            ?           2606    21859 6   virtualization_cluster virtualization_cluster_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_name_key;
       public            netbox    false    393            ?           2606    21861 2   virtualization_cluster virtualization_cluster_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_pkey;
       public            netbox    false    393            ?           2606    21863 @   virtualization_clustergroup virtualization_clustergroup_name_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_name_key UNIQUE (name);
 j   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_name_key;
       public            netbox    false    395            ?           2606    21865 <   virtualization_clustergroup virtualization_clustergroup_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_pkey;
       public            netbox    false    395            ?           2606    21867 @   virtualization_clustergroup virtualization_clustergroup_slug_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_slug_key UNIQUE (slug);
 j   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_slug_key;
       public            netbox    false    395            ?           2606    21869 >   virtualization_clustertype virtualization_clustertype_name_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_name_key UNIQUE (name);
 h   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_name_key;
       public            netbox    false    397            ?           2606    21871 :   virtualization_clustertype virtualization_clustertype_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_pkey;
       public            netbox    false    397            ?           2606    21873 >   virtualization_clustertype virtualization_clustertype_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_slug_key UNIQUE (slug);
 h   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_slug_key;
       public            netbox    false    397            ?           2606    21875 ]   virtualization_virtualmachine virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq UNIQUE (cluster_id, tenant_id, name);
 ?   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq;
       public            netbox    false    399    399    399            ?           2606    21877 @   virtualization_virtualmachine virtualization_virtualmachine_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_pkey;
       public            netbox    false    399            ?           2606    21879 N   virtualization_virtualmachine virtualization_virtualmachine_primary_ip4_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip4_id_key UNIQUE (primary_ip4_id);
 x   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_primary_ip4_id_key;
       public            netbox    false    399            ?           2606    21881 N   virtualization_virtualmachine virtualization_virtualmachine_primary_ip6_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip6_id_key UNIQUE (primary_ip6_id);
 x   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_primary_ip6_id_key;
       public            netbox    false    399            ?           2606    21883 Y   virtualization_vminterface virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq UNIQUE (virtual_machine_id, name);
 ?   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq;
       public            netbox    false    401    401            ?           2606    21885 e   virtualization_vminterface_tagged_vlans virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq UNIQUE (vminterface_id, vlan_id);
 ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq;
       public            netbox    false    403    403            ?           2606    21887 :   virtualization_vminterface virtualization_vminterface_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterface_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vminterface_pkey;
       public            netbox    false    401            ?           2606    21889 T   virtualization_vminterface_tagged_vlans virtualization_vminterface_tagged_vlans_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterface_tagged_vlans_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vminterface_tagged_vlans_pkey;
       public            netbox    false    403            A           1259    21890    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            netbox    false    202            F           1259    21891 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            netbox    false    204            I           1259    21892 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            netbox    false    204            L           1259    21893 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            netbox    false    206            V           1259    21894 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            netbox    false    209            Y           1259    21895 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            netbox    false    209            \           1259    21896 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            netbox    false    212            _           1259    21897 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            netbox    false    212            S           1259    21898     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            netbox    false    208            f           1259    21899 %   circuits_circuit_provider_id_d9195418    INDEX     i   CREATE INDEX circuits_circuit_provider_id_d9195418 ON public.circuits_circuit USING btree (provider_id);
 9   DROP INDEX public.circuits_circuit_provider_id_d9195418;
       public            netbox    false    214            g           1259    21900 #   circuits_circuit_tenant_id_812508a5    INDEX     e   CREATE INDEX circuits_circuit_tenant_id_812508a5 ON public.circuits_circuit USING btree (tenant_id);
 7   DROP INDEX public.circuits_circuit_tenant_id_812508a5;
       public            netbox    false    214            h           1259    21901 !   circuits_circuit_type_id_1b9f485a    INDEX     a   CREATE INDEX circuits_circuit_type_id_1b9f485a ON public.circuits_circuit USING btree (type_id);
 5   DROP INDEX public.circuits_circuit_type_id_1b9f485a;
       public            netbox    false    214            i           1259    21902 8   circuits_circuittermination__cable_peer_type_id_bd122156    INDEX     ?   CREATE INDEX circuits_circuittermination__cable_peer_type_id_bd122156 ON public.circuits_circuittermination USING btree (_cable_peer_type_id);
 L   DROP INDEX public.circuits_circuittermination__cable_peer_type_id_bd122156;
       public            netbox    false    216            j           1259    21903 -   circuits_circuittermination__path_id_6dfd8db0    INDEX     y   CREATE INDEX circuits_circuittermination__path_id_6dfd8db0 ON public.circuits_circuittermination USING btree (_path_id);
 A   DROP INDEX public.circuits_circuittermination__path_id_6dfd8db0;
       public            netbox    false    216            k           1259    21904 -   circuits_circuittermination_cable_id_35e9f703    INDEX     y   CREATE INDEX circuits_circuittermination_cable_id_35e9f703 ON public.circuits_circuittermination USING btree (cable_id);
 A   DROP INDEX public.circuits_circuittermination_cable_id_35e9f703;
       public            netbox    false    216            l           1259    21905 /   circuits_circuittermination_circuit_id_257e87e7    INDEX     }   CREATE INDEX circuits_circuittermination_circuit_id_257e87e7 ON public.circuits_circuittermination USING btree (circuit_id);
 C   DROP INDEX public.circuits_circuittermination_circuit_id_257e87e7;
       public            netbox    false    216            q           1259    21906 ,   circuits_circuittermination_site_id_e6fe5652    INDEX     w   CREATE INDEX circuits_circuittermination_site_id_e6fe5652 ON public.circuits_circuittermination USING btree (site_id);
 @   DROP INDEX public.circuits_circuittermination_site_id_e6fe5652;
       public            netbox    false    216            r           1259    21907 '   circuits_circuittype_name_8256ea9a_like    INDEX     |   CREATE INDEX circuits_circuittype_name_8256ea9a_like ON public.circuits_circuittype USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.circuits_circuittype_name_8256ea9a_like;
       public            netbox    false    218            w           1259    21908 '   circuits_circuittype_slug_9b4b3cf9_like    INDEX     |   CREATE INDEX circuits_circuittype_slug_9b4b3cf9_like ON public.circuits_circuittype USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.circuits_circuittype_slug_9b4b3cf9_like;
       public            netbox    false    218            z           1259    21909 $   circuits_provider_name_8f2514f5_like    INDEX     v   CREATE INDEX circuits_provider_name_8f2514f5_like ON public.circuits_provider USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.circuits_provider_name_8f2514f5_like;
       public            netbox    false    220                       1259    21910 $   circuits_provider_slug_c3c0aa10_like    INDEX     v   CREATE INDEX circuits_provider_slug_c3c0aa10_like ON public.circuits_provider USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.circuits_provider_slug_c3c0aa10_like;
       public            netbox    false    220            ?           1259    21911 ,   dcim_cable__termination_a_device_id_e59cde1c    INDEX     w   CREATE INDEX dcim_cable__termination_a_device_id_e59cde1c ON public.dcim_cable USING btree (_termination_a_device_id);
 @   DROP INDEX public.dcim_cable__termination_a_device_id_e59cde1c;
       public            netbox    false    222            ?           1259    21912 ,   dcim_cable__termination_b_device_id_a9073762    INDEX     w   CREATE INDEX dcim_cable__termination_b_device_id_a9073762 ON public.dcim_cable USING btree (_termination_b_device_id);
 @   DROP INDEX public.dcim_cable__termination_b_device_id_a9073762;
       public            netbox    false    222            ?           1259    21913 )   dcim_cable_termination_a_type_id_a614bab8    INDEX     q   CREATE INDEX dcim_cable_termination_a_type_id_a614bab8 ON public.dcim_cable USING btree (termination_a_type_id);
 =   DROP INDEX public.dcim_cable_termination_a_type_id_a614bab8;
       public            netbox    false    222            ?           1259    21914 )   dcim_cable_termination_b_type_id_a91595d0    INDEX     q   CREATE INDEX dcim_cable_termination_b_type_id_a91595d0 ON public.dcim_cable USING btree (termination_b_type_id);
 =   DROP INDEX public.dcim_cable_termination_b_type_id_a91595d0;
       public            netbox    false    222            ?           1259    21915 +   dcim_cablepath_destination_type_id_a8c1654b    INDEX     u   CREATE INDEX dcim_cablepath_destination_type_id_a8c1654b ON public.dcim_cablepath USING btree (destination_type_id);
 ?   DROP INDEX public.dcim_cablepath_destination_type_id_a8c1654b;
       public            netbox    false    224            ?           1259    21916 &   dcim_cablepath_origin_type_id_6de54f6d    INDEX     k   CREATE INDEX dcim_cablepath_origin_type_id_6de54f6d ON public.dcim_cablepath USING btree (origin_type_id);
 :   DROP INDEX public.dcim_cablepath_origin_type_id_6de54f6d;
       public            netbox    false    224            ?           1259    21917 -   dcim_consoleport__cable_peer_type_id_52adb1be    INDEX     y   CREATE INDEX dcim_consoleport__cable_peer_type_id_52adb1be ON public.dcim_consoleport USING btree (_cable_peer_type_id);
 A   DROP INDEX public.dcim_consoleport__cable_peer_type_id_52adb1be;
       public            netbox    false    226            ?           1259    21918 "   dcim_consoleport__path_id_e40a4436    INDEX     c   CREATE INDEX dcim_consoleport__path_id_e40a4436 ON public.dcim_consoleport USING btree (_path_id);
 6   DROP INDEX public.dcim_consoleport__path_id_e40a4436;
       public            netbox    false    226            ?           1259    21919 "   dcim_consoleport_cable_id_a9ae5465    INDEX     c   CREATE INDEX dcim_consoleport_cable_id_a9ae5465 ON public.dcim_consoleport USING btree (cable_id);
 6   DROP INDEX public.dcim_consoleport_cable_id_a9ae5465;
       public            netbox    false    226            ?           1259    21920 #   dcim_consoleport_device_id_f2d90d3c    INDEX     e   CREATE INDEX dcim_consoleport_device_id_f2d90d3c ON public.dcim_consoleport USING btree (device_id);
 7   DROP INDEX public.dcim_consoleport_device_id_f2d90d3c;
       public            netbox    false    226            ?           1259    21921 0   dcim_consoleporttemplate_device_type_id_075d4015    INDEX        CREATE INDEX dcim_consoleporttemplate_device_type_id_075d4015 ON public.dcim_consoleporttemplate USING btree (device_type_id);
 D   DROP INDEX public.dcim_consoleporttemplate_device_type_id_075d4015;
       public            netbox    false    228            ?           1259    21922 3   dcim_consoleserverport__cable_peer_type_id_132b6744    INDEX     ?   CREATE INDEX dcim_consoleserverport__cable_peer_type_id_132b6744 ON public.dcim_consoleserverport USING btree (_cable_peer_type_id);
 G   DROP INDEX public.dcim_consoleserverport__cable_peer_type_id_132b6744;
       public            netbox    false    230            ?           1259    21923 (   dcim_consoleserverport__path_id_dc5abe09    INDEX     o   CREATE INDEX dcim_consoleserverport__path_id_dc5abe09 ON public.dcim_consoleserverport USING btree (_path_id);
 <   DROP INDEX public.dcim_consoleserverport__path_id_dc5abe09;
       public            netbox    false    230            ?           1259    21924 (   dcim_consoleserverport_cable_id_f2940dfd    INDEX     o   CREATE INDEX dcim_consoleserverport_cable_id_f2940dfd ON public.dcim_consoleserverport USING btree (cable_id);
 <   DROP INDEX public.dcim_consoleserverport_cable_id_f2940dfd;
       public            netbox    false    230            ?           1259    21925 )   dcim_consoleserverport_device_id_d9866581    INDEX     q   CREATE INDEX dcim_consoleserverport_device_id_d9866581 ON public.dcim_consoleserverport USING btree (device_id);
 =   DROP INDEX public.dcim_consoleserverport_device_id_d9866581;
       public            netbox    false    230            ?           1259    21926 6   dcim_consoleserverporttemplate_device_type_id_579bdc86    INDEX     ?   CREATE INDEX dcim_consoleserverporttemplate_device_type_id_579bdc86 ON public.dcim_consoleserverporttemplate USING btree (device_type_id);
 J   DROP INDEX public.dcim_consoleserverporttemplate_device_type_id_579bdc86;
       public            netbox    false    232            ?           1259    21927 #   dcim_device_asset_tag_8dac1079_like    INDEX     t   CREATE INDEX dcim_device_asset_tag_8dac1079_like ON public.dcim_device USING btree (asset_tag varchar_pattern_ops);
 7   DROP INDEX public.dcim_device_asset_tag_8dac1079_like;
       public            netbox    false    234            ?           1259    21928    dcim_device_cluster_id_cf852f78    INDEX     ]   CREATE INDEX dcim_device_cluster_id_cf852f78 ON public.dcim_device USING btree (cluster_id);
 3   DROP INDEX public.dcim_device_cluster_id_cf852f78;
       public            netbox    false    234            ?           1259    21929 #   dcim_device_device_role_id_682e8188    INDEX     e   CREATE INDEX dcim_device_device_role_id_682e8188 ON public.dcim_device USING btree (device_role_id);
 7   DROP INDEX public.dcim_device_device_role_id_682e8188;
       public            netbox    false    234            ?           1259    21930 #   dcim_device_device_type_id_d61b4086    INDEX     e   CREATE INDEX dcim_device_device_type_id_d61b4086 ON public.dcim_device USING btree (device_type_id);
 7   DROP INDEX public.dcim_device_device_type_id_d61b4086;
       public            netbox    false    234            ?           1259    21931     dcim_device_platform_id_468138f1    INDEX     _   CREATE INDEX dcim_device_platform_id_468138f1 ON public.dcim_device USING btree (platform_id);
 4   DROP INDEX public.dcim_device_platform_id_468138f1;
       public            netbox    false    234            ?           1259    21932    dcim_device_rack_id_23bde71f    INDEX     W   CREATE INDEX dcim_device_rack_id_23bde71f ON public.dcim_device USING btree (rack_id);
 0   DROP INDEX public.dcim_device_rack_id_23bde71f;
       public            netbox    false    234            ?           1259    21933    dcim_device_site_id_ff897cf6    INDEX     W   CREATE INDEX dcim_device_site_id_ff897cf6 ON public.dcim_device USING btree (site_id);
 0   DROP INDEX public.dcim_device_site_id_ff897cf6;
       public            netbox    false    234            ?           1259    21934    dcim_device_tenant_id_dcea7969    INDEX     [   CREATE INDEX dcim_device_tenant_id_dcea7969 ON public.dcim_device USING btree (tenant_id);
 2   DROP INDEX public.dcim_device_tenant_id_dcea7969;
       public            netbox    false    234            ?           1259    21935 '   dcim_device_virtual_chassis_id_aed51693    INDEX     m   CREATE INDEX dcim_device_virtual_chassis_id_aed51693 ON public.dcim_device USING btree (virtual_chassis_id);
 ;   DROP INDEX public.dcim_device_virtual_chassis_id_aed51693;
       public            netbox    false    234            ?           1259    21936 !   dcim_devicebay_device_id_0c8a1218    INDEX     a   CREATE INDEX dcim_devicebay_device_id_0c8a1218 ON public.dcim_devicebay USING btree (device_id);
 5   DROP INDEX public.dcim_devicebay_device_id_0c8a1218;
       public            netbox    false    236            ?           1259    21937 .   dcim_devicebaytemplate_device_type_id_f4b24a29    INDEX     {   CREATE INDEX dcim_devicebaytemplate_device_type_id_f4b24a29 ON public.dcim_devicebaytemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_devicebaytemplate_device_type_id_f4b24a29;
       public            netbox    false    238            ?           1259    21938 "   dcim_devicerole_name_1c813306_like    INDEX     r   CREATE INDEX dcim_devicerole_name_1c813306_like ON public.dcim_devicerole USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicerole_name_1c813306_like;
       public            netbox    false    240            ?           1259    21939 "   dcim_devicerole_slug_7952643b_like    INDEX     r   CREATE INDEX dcim_devicerole_slug_7952643b_like ON public.dcim_devicerole USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicerole_slug_7952643b_like;
       public            netbox    false    240            ?           1259    21940 (   dcim_devicetype_manufacturer_id_a3e8029e    INDEX     o   CREATE INDEX dcim_devicetype_manufacturer_id_a3e8029e ON public.dcim_devicetype USING btree (manufacturer_id);
 <   DROP INDEX public.dcim_devicetype_manufacturer_id_a3e8029e;
       public            netbox    false    242            ?           1259    21941    dcim_devicetype_slug_448745bd    INDEX     Y   CREATE INDEX dcim_devicetype_slug_448745bd ON public.dcim_devicetype USING btree (slug);
 1   DROP INDEX public.dcim_devicetype_slug_448745bd;
       public            netbox    false    242            ?           1259    21942 "   dcim_devicetype_slug_448745bd_like    INDEX     r   CREATE INDEX dcim_devicetype_slug_448745bd_like ON public.dcim_devicetype USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicetype_slug_448745bd_like;
       public            netbox    false    242            ?           1259    21943 +   dcim_frontport__cable_peer_type_id_c4690f56    INDEX     u   CREATE INDEX dcim_frontport__cable_peer_type_id_c4690f56 ON public.dcim_frontport USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_frontport__cable_peer_type_id_c4690f56;
       public            netbox    false    244            ?           1259    21944     dcim_frontport_cable_id_04ff8aab    INDEX     _   CREATE INDEX dcim_frontport_cable_id_04ff8aab ON public.dcim_frontport USING btree (cable_id);
 4   DROP INDEX public.dcim_frontport_cable_id_04ff8aab;
       public            netbox    false    244            ?           1259    21945 !   dcim_frontport_device_id_950557b5    INDEX     a   CREATE INDEX dcim_frontport_device_id_950557b5 ON public.dcim_frontport USING btree (device_id);
 5   DROP INDEX public.dcim_frontport_device_id_950557b5;
       public            netbox    false    244            ?           1259    21946 $   dcim_frontport_rear_port_id_78df2532    INDEX     g   CREATE INDEX dcim_frontport_rear_port_id_78df2532 ON public.dcim_frontport USING btree (rear_port_id);
 8   DROP INDEX public.dcim_frontport_rear_port_id_78df2532;
       public            netbox    false    244            ?           1259    21947 .   dcim_frontporttemplate_device_type_id_f088b952    INDEX     {   CREATE INDEX dcim_frontporttemplate_device_type_id_f088b952 ON public.dcim_frontporttemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_frontporttemplate_device_type_id_f088b952;
       public            netbox    false    246            ?           1259    21948 ,   dcim_frontporttemplate_rear_port_id_9775411b    INDEX     w   CREATE INDEX dcim_frontporttemplate_rear_port_id_9775411b ON public.dcim_frontporttemplate USING btree (rear_port_id);
 @   DROP INDEX public.dcim_frontporttemplate_rear_port_id_9775411b;
       public            netbox    false    246            ?           1259    21949 +   dcim_interface__cable_peer_type_id_ce52cb81    INDEX     u   CREATE INDEX dcim_interface__cable_peer_type_id_ce52cb81 ON public.dcim_interface USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_interface__cable_peer_type_id_ce52cb81;
       public            netbox    false    248            ?           1259    21950     dcim_interface__path_id_f8f4f7f0    INDEX     _   CREATE INDEX dcim_interface__path_id_f8f4f7f0 ON public.dcim_interface USING btree (_path_id);
 4   DROP INDEX public.dcim_interface__path_id_f8f4f7f0;
       public            netbox    false    248            ?           1259    21951     dcim_interface_cable_id_1b264edb    INDEX     _   CREATE INDEX dcim_interface_cable_id_1b264edb ON public.dcim_interface USING btree (cable_id);
 4   DROP INDEX public.dcim_interface_cable_id_1b264edb;
       public            netbox    false    248            ?           1259    21952 !   dcim_interface_device_id_359c6115    INDEX     a   CREATE INDEX dcim_interface_device_id_359c6115 ON public.dcim_interface USING btree (device_id);
 5   DROP INDEX public.dcim_interface_device_id_359c6115;
       public            netbox    false    248            ?           1259    21953    dcim_interface_lag_id_ea1a1d12    INDEX     [   CREATE INDEX dcim_interface_lag_id_ea1a1d12 ON public.dcim_interface USING btree (lag_id);
 2   DROP INDEX public.dcim_interface_lag_id_ea1a1d12;
       public            netbox    false    248            ?           1259    21954 1   dcim_interface_tagged_vlans_interface_id_5870c9e9    INDEX     ?   CREATE INDEX dcim_interface_tagged_vlans_interface_id_5870c9e9 ON public.dcim_interface_tagged_vlans USING btree (interface_id);
 E   DROP INDEX public.dcim_interface_tagged_vlans_interface_id_5870c9e9;
       public            netbox    false    250                       1259    21955 ,   dcim_interface_tagged_vlans_vlan_id_e027005c    INDEX     w   CREATE INDEX dcim_interface_tagged_vlans_vlan_id_e027005c ON public.dcim_interface_tagged_vlans USING btree (vlan_id);
 @   DROP INDEX public.dcim_interface_tagged_vlans_vlan_id_e027005c;
       public            netbox    false    250            ?           1259    21956 (   dcim_interface_untagged_vlan_id_838dc7be    INDEX     o   CREATE INDEX dcim_interface_untagged_vlan_id_838dc7be ON public.dcim_interface USING btree (untagged_vlan_id);
 <   DROP INDEX public.dcim_interface_untagged_vlan_id_838dc7be;
       public            netbox    false    248                       1259    21957 .   dcim_interfacetemplate_device_type_id_4bfcbfab    INDEX     {   CREATE INDEX dcim_interfacetemplate_device_type_id_4bfcbfab ON public.dcim_interfacetemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_interfacetemplate_device_type_id_4bfcbfab;
       public            netbox    false    252                       1259    21958 *   dcim_inventoryitem_asset_tag_d3289273_like    INDEX     ?   CREATE INDEX dcim_inventoryitem_asset_tag_d3289273_like ON public.dcim_inventoryitem USING btree (asset_tag varchar_pattern_ops);
 >   DROP INDEX public.dcim_inventoryitem_asset_tag_d3289273_like;
       public            netbox    false    254            
           1259    21959 #   dcim_inventoryitem_tree_id_4676ade2    INDEX     e   CREATE INDEX dcim_inventoryitem_tree_id_4676ade2 ON public.dcim_inventoryitem USING btree (tree_id);
 7   DROP INDEX public.dcim_inventoryitem_tree_id_4676ade2;
       public            netbox    false    254                       1259    21960 $   dcim_manufacturer_name_841fcd92_like    INDEX     v   CREATE INDEX dcim_manufacturer_name_841fcd92_like ON public.dcim_manufacturer USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.dcim_manufacturer_name_841fcd92_like;
       public            netbox    false    255                       1259    21961 $   dcim_manufacturer_slug_00430749_like    INDEX     v   CREATE INDEX dcim_manufacturer_slug_00430749_like ON public.dcim_manufacturer USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.dcim_manufacturer_slug_00430749_like;
       public            netbox    false    255                       1259    21962    dcim_module_device_id_53cfd5be    INDEX     b   CREATE INDEX dcim_module_device_id_53cfd5be ON public.dcim_inventoryitem USING btree (device_id);
 2   DROP INDEX public.dcim_module_device_id_53cfd5be;
       public            netbox    false    254                       1259    21963 $   dcim_module_manufacturer_id_95322cbb    INDEX     n   CREATE INDEX dcim_module_manufacturer_id_95322cbb ON public.dcim_inventoryitem USING btree (manufacturer_id);
 8   DROP INDEX public.dcim_module_manufacturer_id_95322cbb;
       public            netbox    false    254                       1259    21964    dcim_module_parent_id_bb5d0341    INDEX     b   CREATE INDEX dcim_module_parent_id_bb5d0341 ON public.dcim_inventoryitem USING btree (parent_id);
 2   DROP INDEX public.dcim_module_parent_id_bb5d0341;
       public            netbox    false    254                       1259    21965 &   dcim_platform_manufacturer_id_83f72d3d    INDEX     k   CREATE INDEX dcim_platform_manufacturer_id_83f72d3d ON public.dcim_platform USING btree (manufacturer_id);
 :   DROP INDEX public.dcim_platform_manufacturer_id_83f72d3d;
       public            netbox    false    258                       1259    21966     dcim_platform_name_c2f04255_like    INDEX     n   CREATE INDEX dcim_platform_name_c2f04255_like ON public.dcim_platform USING btree (name varchar_pattern_ops);
 4   DROP INDEX public.dcim_platform_name_c2f04255_like;
       public            netbox    false    258                        1259    21967     dcim_platform_slug_b0908ae4_like    INDEX     n   CREATE INDEX dcim_platform_slug_b0908ae4_like ON public.dcim_platform USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.dcim_platform_slug_b0908ae4_like;
       public            netbox    false    258            #           1259    21968 +   dcim_powerfeed__cable_peer_type_id_9f930589    INDEX     u   CREATE INDEX dcim_powerfeed__cable_peer_type_id_9f930589 ON public.dcim_powerfeed USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_powerfeed__cable_peer_type_id_9f930589;
       public            netbox    false    260            $           1259    21969     dcim_powerfeed__path_id_a1ea1f28    INDEX     _   CREATE INDEX dcim_powerfeed__path_id_a1ea1f28 ON public.dcim_powerfeed USING btree (_path_id);
 4   DROP INDEX public.dcim_powerfeed__path_id_a1ea1f28;
       public            netbox    false    260            %           1259    21970     dcim_powerfeed_cable_id_ec44c4f8    INDEX     _   CREATE INDEX dcim_powerfeed_cable_id_ec44c4f8 ON public.dcim_powerfeed USING btree (cable_id);
 4   DROP INDEX public.dcim_powerfeed_cable_id_ec44c4f8;
       public            netbox    false    260            (           1259    21971 &   dcim_powerfeed_power_panel_id_32bde3be    INDEX     k   CREATE INDEX dcim_powerfeed_power_panel_id_32bde3be ON public.dcim_powerfeed USING btree (power_panel_id);
 :   DROP INDEX public.dcim_powerfeed_power_panel_id_32bde3be;
       public            netbox    false    260            +           1259    21972    dcim_powerfeed_rack_id_7abba090    INDEX     ]   CREATE INDEX dcim_powerfeed_rack_id_7abba090 ON public.dcim_powerfeed USING btree (rack_id);
 3   DROP INDEX public.dcim_powerfeed_rack_id_7abba090;
       public            netbox    false    260            ,           1259    21973 -   dcim_poweroutlet__cable_peer_type_id_bbff28d0    INDEX     y   CREATE INDEX dcim_poweroutlet__cable_peer_type_id_bbff28d0 ON public.dcim_poweroutlet USING btree (_cable_peer_type_id);
 A   DROP INDEX public.dcim_poweroutlet__cable_peer_type_id_bbff28d0;
       public            netbox    false    262            -           1259    21974 "   dcim_poweroutlet__path_id_cbb47bb9    INDEX     c   CREATE INDEX dcim_poweroutlet__path_id_cbb47bb9 ON public.dcim_poweroutlet USING btree (_path_id);
 6   DROP INDEX public.dcim_poweroutlet__path_id_cbb47bb9;
       public            netbox    false    262            .           1259    21975 "   dcim_poweroutlet_cable_id_8dbea1ec    INDEX     c   CREATE INDEX dcim_poweroutlet_cable_id_8dbea1ec ON public.dcim_poweroutlet USING btree (cable_id);
 6   DROP INDEX public.dcim_poweroutlet_cable_id_8dbea1ec;
       public            netbox    false    262            /           1259    21976 #   dcim_poweroutlet_device_id_286351d7    INDEX     e   CREATE INDEX dcim_poweroutlet_device_id_286351d7 ON public.dcim_poweroutlet USING btree (device_id);
 7   DROP INDEX public.dcim_poweroutlet_device_id_286351d7;
       public            netbox    false    262            4           1259    21977 '   dcim_poweroutlet_power_port_id_9bdf4163    INDEX     m   CREATE INDEX dcim_poweroutlet_power_port_id_9bdf4163 ON public.dcim_poweroutlet USING btree (power_port_id);
 ;   DROP INDEX public.dcim_poweroutlet_power_port_id_9bdf4163;
       public            netbox    false    262            5           1259    21978 0   dcim_poweroutlettemplate_device_type_id_26b2316c    INDEX        CREATE INDEX dcim_poweroutlettemplate_device_type_id_26b2316c ON public.dcim_poweroutlettemplate USING btree (device_type_id);
 D   DROP INDEX public.dcim_poweroutlettemplate_device_type_id_26b2316c;
       public            netbox    false    264            :           1259    21979 /   dcim_poweroutlettemplate_power_port_id_c0fb0c42    INDEX     }   CREATE INDEX dcim_poweroutlettemplate_power_port_id_c0fb0c42 ON public.dcim_poweroutlettemplate USING btree (power_port_id);
 C   DROP INDEX public.dcim_poweroutlettemplate_power_port_id_c0fb0c42;
       public            netbox    false    264            =           1259    21980 &   dcim_powerpanel_rack_group_id_76467cc9    INDEX     k   CREATE INDEX dcim_powerpanel_rack_group_id_76467cc9 ON public.dcim_powerpanel USING btree (rack_group_id);
 :   DROP INDEX public.dcim_powerpanel_rack_group_id_76467cc9;
       public            netbox    false    266            >           1259    21981     dcim_powerpanel_site_id_c430bc89    INDEX     _   CREATE INDEX dcim_powerpanel_site_id_c430bc89 ON public.dcim_powerpanel USING btree (site_id);
 4   DROP INDEX public.dcim_powerpanel_site_id_c430bc89;
       public            netbox    false    266            A           1259    21982 +   dcim_powerport__cable_peer_type_id_9df2a278    INDEX     u   CREATE INDEX dcim_powerport__cable_peer_type_id_9df2a278 ON public.dcim_powerport USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_powerport__cable_peer_type_id_9df2a278;
       public            netbox    false    268            B           1259    21983     dcim_powerport__path_id_9fe4af8f    INDEX     _   CREATE INDEX dcim_powerport__path_id_9fe4af8f ON public.dcim_powerport USING btree (_path_id);
 4   DROP INDEX public.dcim_powerport__path_id_9fe4af8f;
       public            netbox    false    268            C           1259    21984     dcim_powerport_cable_id_c9682ba2    INDEX     _   CREATE INDEX dcim_powerport_cable_id_c9682ba2 ON public.dcim_powerport USING btree (cable_id);
 4   DROP INDEX public.dcim_powerport_cable_id_c9682ba2;
       public            netbox    false    268            D           1259    21985 !   dcim_powerport_device_id_ef7185ae    INDEX     a   CREATE INDEX dcim_powerport_device_id_ef7185ae ON public.dcim_powerport USING btree (device_id);
 5   DROP INDEX public.dcim_powerport_device_id_ef7185ae;
       public            netbox    false    268            I           1259    21986 .   dcim_powerporttemplate_device_type_id_1ddfbfcc    INDEX     {   CREATE INDEX dcim_powerporttemplate_device_type_id_1ddfbfcc ON public.dcim_powerporttemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_powerporttemplate_device_type_id_1ddfbfcc;
       public            netbox    false    270            N           1259    21987 !   dcim_rack_asset_tag_f88408e5_like    INDEX     p   CREATE INDEX dcim_rack_asset_tag_f88408e5_like ON public.dcim_rack USING btree (asset_tag varchar_pattern_ops);
 5   DROP INDEX public.dcim_rack_asset_tag_f88408e5_like;
       public            netbox    false    272            Q           1259    21988    dcim_rack_group_id_44e90ea9    INDEX     U   CREATE INDEX dcim_rack_group_id_44e90ea9 ON public.dcim_rack USING btree (group_id);
 /   DROP INDEX public.dcim_rack_group_id_44e90ea9;
       public            netbox    false    272            X           1259    21989    dcim_rack_role_id_62d6919e    INDEX     S   CREATE INDEX dcim_rack_role_id_62d6919e ON public.dcim_rack USING btree (role_id);
 .   DROP INDEX public.dcim_rack_role_id_62d6919e;
       public            netbox    false    272            Y           1259    21990    dcim_rack_site_id_403c7b3a    INDEX     S   CREATE INDEX dcim_rack_site_id_403c7b3a ON public.dcim_rack USING btree (site_id);
 .   DROP INDEX public.dcim_rack_site_id_403c7b3a;
       public            netbox    false    272            Z           1259    21991    dcim_rack_tenant_id_7cdf3725    INDEX     W   CREATE INDEX dcim_rack_tenant_id_7cdf3725 ON public.dcim_rack USING btree (tenant_id);
 0   DROP INDEX public.dcim_rack_tenant_id_7cdf3725;
       public            netbox    false    272            [           1259    21992 !   dcim_rackgroup_parent_id_cc315105    INDEX     a   CREATE INDEX dcim_rackgroup_parent_id_cc315105 ON public.dcim_rackgroup USING btree (parent_id);
 5   DROP INDEX public.dcim_rackgroup_parent_id_cc315105;
       public            netbox    false    274            ^           1259    21993    dcim_rackgroup_site_id_13520e89    INDEX     ]   CREATE INDEX dcim_rackgroup_site_id_13520e89 ON public.dcim_rackgroup USING btree (site_id);
 3   DROP INDEX public.dcim_rackgroup_site_id_13520e89;
       public            netbox    false    274            c           1259    21994    dcim_rackgroup_slug_3f4582a7    INDEX     W   CREATE INDEX dcim_rackgroup_slug_3f4582a7 ON public.dcim_rackgroup USING btree (slug);
 0   DROP INDEX public.dcim_rackgroup_slug_3f4582a7;
       public            netbox    false    274            d           1259    21995 !   dcim_rackgroup_slug_3f4582a7_like    INDEX     p   CREATE INDEX dcim_rackgroup_slug_3f4582a7_like ON public.dcim_rackgroup USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.dcim_rackgroup_slug_3f4582a7_like;
       public            netbox    false    274            e           1259    21996    dcim_rackgroup_tree_id_9c2ad6f4    INDEX     ]   CREATE INDEX dcim_rackgroup_tree_id_9c2ad6f4 ON public.dcim_rackgroup USING btree (tree_id);
 3   DROP INDEX public.dcim_rackgroup_tree_id_9c2ad6f4;
       public            netbox    false    274            h           1259    21997 %   dcim_rackreservation_rack_id_1ebbaa9b    INDEX     i   CREATE INDEX dcim_rackreservation_rack_id_1ebbaa9b ON public.dcim_rackreservation USING btree (rack_id);
 9   DROP INDEX public.dcim_rackreservation_rack_id_1ebbaa9b;
       public            netbox    false    276            i           1259    21998 '   dcim_rackreservation_tenant_id_eb5e045f    INDEX     m   CREATE INDEX dcim_rackreservation_tenant_id_eb5e045f ON public.dcim_rackreservation USING btree (tenant_id);
 ;   DROP INDEX public.dcim_rackreservation_tenant_id_eb5e045f;
       public            netbox    false    276            j           1259    21999 %   dcim_rackreservation_user_id_0785a527    INDEX     i   CREATE INDEX dcim_rackreservation_user_id_0785a527 ON public.dcim_rackreservation USING btree (user_id);
 9   DROP INDEX public.dcim_rackreservation_user_id_0785a527;
       public            netbox    false    276            k           1259    22000     dcim_rackrole_name_9077cfcc_like    INDEX     n   CREATE INDEX dcim_rackrole_name_9077cfcc_like ON public.dcim_rackrole USING btree (name varchar_pattern_ops);
 4   DROP INDEX public.dcim_rackrole_name_9077cfcc_like;
       public            netbox    false    278            p           1259    22001     dcim_rackrole_slug_40bbcd3a_like    INDEX     n   CREATE INDEX dcim_rackrole_slug_40bbcd3a_like ON public.dcim_rackrole USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.dcim_rackrole_slug_40bbcd3a_like;
       public            netbox    false    278            s           1259    22002 *   dcim_rearport__cable_peer_type_id_cecf241c    INDEX     s   CREATE INDEX dcim_rearport__cable_peer_type_id_cecf241c ON public.dcim_rearport USING btree (_cable_peer_type_id);
 >   DROP INDEX public.dcim_rearport__cable_peer_type_id_cecf241c;
       public            netbox    false    280            t           1259    22003    dcim_rearport_cable_id_42c0e4e7    INDEX     ]   CREATE INDEX dcim_rearport_cable_id_42c0e4e7 ON public.dcim_rearport USING btree (cable_id);
 3   DROP INDEX public.dcim_rearport_cable_id_42c0e4e7;
       public            netbox    false    280            u           1259    22004     dcim_rearport_device_id_0bdfe9c0    INDEX     _   CREATE INDEX dcim_rearport_device_id_0bdfe9c0 ON public.dcim_rearport USING btree (device_id);
 4   DROP INDEX public.dcim_rearport_device_id_0bdfe9c0;
       public            netbox    false    280            z           1259    22005 -   dcim_rearporttemplate_device_type_id_6a02fd01    INDEX     y   CREATE INDEX dcim_rearporttemplate_device_type_id_6a02fd01 ON public.dcim_rearporttemplate USING btree (device_type_id);
 A   DROP INDEX public.dcim_rearporttemplate_device_type_id_6a02fd01;
       public            netbox    false    282                       1259    22006    dcim_region_name_ba5a7082_like    INDEX     j   CREATE INDEX dcim_region_name_ba5a7082_like ON public.dcim_region USING btree (name varchar_pattern_ops);
 2   DROP INDEX public.dcim_region_name_ba5a7082_like;
       public            netbox    false    284            ?           1259    22007    dcim_region_parent_id_2486f5d4    INDEX     [   CREATE INDEX dcim_region_parent_id_2486f5d4 ON public.dcim_region USING btree (parent_id);
 2   DROP INDEX public.dcim_region_parent_id_2486f5d4;
       public            netbox    false    284            ?           1259    22008    dcim_region_slug_ff078a66_like    INDEX     j   CREATE INDEX dcim_region_slug_ff078a66_like ON public.dcim_region USING btree (slug varchar_pattern_ops);
 2   DROP INDEX public.dcim_region_slug_ff078a66_like;
       public            netbox    false    284            ?           1259    22009    dcim_region_tree_id_a09ea9a7    INDEX     W   CREATE INDEX dcim_region_tree_id_a09ea9a7 ON public.dcim_region USING btree (tree_id);
 0   DROP INDEX public.dcim_region_tree_id_a09ea9a7;
       public            netbox    false    284            ?           1259    22010    dcim_site_name_8fe66c76_like    INDEX     f   CREATE INDEX dcim_site_name_8fe66c76_like ON public.dcim_site USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.dcim_site_name_8fe66c76_like;
       public            netbox    false    286            ?           1259    22011    dcim_site_region_id_45210932    INDEX     W   CREATE INDEX dcim_site_region_id_45210932 ON public.dcim_site USING btree (region_id);
 0   DROP INDEX public.dcim_site_region_id_45210932;
       public            netbox    false    286            ?           1259    22012    dcim_site_slug_4412c762_like    INDEX     f   CREATE INDEX dcim_site_slug_4412c762_like ON public.dcim_site USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.dcim_site_slug_4412c762_like;
       public            netbox    false    286            ?           1259    22013    dcim_site_tenant_id_15e7df63    INDEX     W   CREATE INDEX dcim_site_tenant_id_15e7df63 ON public.dcim_site USING btree (tenant_id);
 0   DROP INDEX public.dcim_site_tenant_id_15e7df63;
       public            netbox    false    286            ?           1259    22014 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            netbox    false    290            ?           1259    22015 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            netbox    false    290            ?           1259    22016 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            netbox    false    296            ?           1259    22017 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            netbox    false    296            ?           1259    22018 <   extras_configcontext_cluster_groups_clustergroup_id_f4322ce8    INDEX     ?   CREATE INDEX extras_configcontext_cluster_groups_clustergroup_id_f4322ce8 ON public.extras_configcontext_cluster_groups USING btree (clustergroup_id);
 P   DROP INDEX public.extras_configcontext_cluster_groups_clustergroup_id_f4322ce8;
       public            netbox    false    298            ?           1259    22019 =   extras_configcontext_cluster_groups_configcontext_id_8f50b794    INDEX     ?   CREATE INDEX extras_configcontext_cluster_groups_configcontext_id_8f50b794 ON public.extras_configcontext_cluster_groups USING btree (configcontext_id);
 Q   DROP INDEX public.extras_configcontext_cluster_groups_configcontext_id_8f50b794;
       public            netbox    false    298            ?           1259    22020 1   extras_configcontext_clusters_cluster_id_6abd47a1    INDEX     ?   CREATE INDEX extras_configcontext_clusters_cluster_id_6abd47a1 ON public.extras_configcontext_clusters USING btree (cluster_id);
 E   DROP INDEX public.extras_configcontext_clusters_cluster_id_6abd47a1;
       public            netbox    false    300            ?           1259    22021 7   extras_configcontext_clusters_configcontext_id_ed579a40    INDEX     ?   CREATE INDEX extras_configcontext_clusters_configcontext_id_ed579a40 ON public.extras_configcontext_clusters USING btree (configcontext_id);
 K   DROP INDEX public.extras_configcontext_clusters_configcontext_id_ed579a40;
       public            netbox    false    300            ?           1259    22022 '   extras_configcontext_name_4bbfe25d_like    INDEX     |   CREATE INDEX extras_configcontext_name_4bbfe25d_like ON public.extras_configcontext USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.extras_configcontext_name_4bbfe25d_like;
       public            netbox    false    297            ?           1259    22023 8   extras_configcontext_platforms_configcontext_id_2a516699    INDEX     ?   CREATE INDEX extras_configcontext_platforms_configcontext_id_2a516699 ON public.extras_configcontext_platforms USING btree (configcontext_id);
 L   DROP INDEX public.extras_configcontext_platforms_configcontext_id_2a516699;
       public            netbox    false    303            ?           1259    22024 3   extras_configcontext_platforms_platform_id_3fdfedc0    INDEX     ?   CREATE INDEX extras_configcontext_platforms_platform_id_3fdfedc0 ON public.extras_configcontext_platforms USING btree (platform_id);
 G   DROP INDEX public.extras_configcontext_platforms_platform_id_3fdfedc0;
       public            netbox    false    303            ?           1259    22025 6   extras_configcontext_regions_configcontext_id_73003dbc    INDEX     ?   CREATE INDEX extras_configcontext_regions_configcontext_id_73003dbc ON public.extras_configcontext_regions USING btree (configcontext_id);
 J   DROP INDEX public.extras_configcontext_regions_configcontext_id_73003dbc;
       public            netbox    false    305            ?           1259    22026 /   extras_configcontext_regions_region_id_35c6ba9d    INDEX     }   CREATE INDEX extras_configcontext_regions_region_id_35c6ba9d ON public.extras_configcontext_regions USING btree (region_id);
 C   DROP INDEX public.extras_configcontext_regions_region_id_35c6ba9d;
       public            netbox    false    305            ?           1259    22027 4   extras_configcontext_roles_configcontext_id_59b67386    INDEX     ?   CREATE INDEX extras_configcontext_roles_configcontext_id_59b67386 ON public.extras_configcontext_roles USING btree (configcontext_id);
 H   DROP INDEX public.extras_configcontext_roles_configcontext_id_59b67386;
       public            netbox    false    307            ?           1259    22028 1   extras_configcontext_roles_devicerole_id_d3a84813    INDEX     ?   CREATE INDEX extras_configcontext_roles_devicerole_id_d3a84813 ON public.extras_configcontext_roles USING btree (devicerole_id);
 E   DROP INDEX public.extras_configcontext_roles_devicerole_id_d3a84813;
       public            netbox    false    307            ?           1259    22029 4   extras_configcontext_sites_configcontext_id_8c54feb9    INDEX     ?   CREATE INDEX extras_configcontext_sites_configcontext_id_8c54feb9 ON public.extras_configcontext_sites USING btree (configcontext_id);
 H   DROP INDEX public.extras_configcontext_sites_configcontext_id_8c54feb9;
       public            netbox    false    309            ?           1259    22030 +   extras_configcontext_sites_site_id_cbb76c96    INDEX     u   CREATE INDEX extras_configcontext_sites_site_id_cbb76c96 ON public.extras_configcontext_sites USING btree (site_id);
 ?   DROP INDEX public.extras_configcontext_sites_site_id_cbb76c96;
       public            netbox    false    309            ?           1259    22031 3   extras_configcontext_tags_configcontext_id_64a392b1    INDEX     ?   CREATE INDEX extras_configcontext_tags_configcontext_id_64a392b1 ON public.extras_configcontext_tags USING btree (configcontext_id);
 G   DROP INDEX public.extras_configcontext_tags_configcontext_id_64a392b1;
       public            netbox    false    311            ?           1259    22032 )   extras_configcontext_tags_tag_id_129a5d87    INDEX     q   CREATE INDEX extras_configcontext_tags_tag_id_129a5d87 ON public.extras_configcontext_tags USING btree (tag_id);
 =   DROP INDEX public.extras_configcontext_tags_tag_id_129a5d87;
       public            netbox    false    311            ?           1259    22033 <   extras_configcontext_tenant_groups_configcontext_id_92f68345    INDEX     ?   CREATE INDEX extras_configcontext_tenant_groups_configcontext_id_92f68345 ON public.extras_configcontext_tenant_groups USING btree (configcontext_id);
 P   DROP INDEX public.extras_configcontext_tenant_groups_configcontext_id_92f68345;
       public            netbox    false    313            ?           1259    22034 :   extras_configcontext_tenant_groups_tenantgroup_id_0909688d    INDEX     ?   CREATE INDEX extras_configcontext_tenant_groups_tenantgroup_id_0909688d ON public.extras_configcontext_tenant_groups USING btree (tenantgroup_id);
 N   DROP INDEX public.extras_configcontext_tenant_groups_tenantgroup_id_0909688d;
       public            netbox    false    313            ?           1259    22035 6   extras_configcontext_tenants_configcontext_id_b53552a6    INDEX     ?   CREATE INDEX extras_configcontext_tenants_configcontext_id_b53552a6 ON public.extras_configcontext_tenants USING btree (configcontext_id);
 J   DROP INDEX public.extras_configcontext_tenants_configcontext_id_b53552a6;
       public            netbox    false    315            ?           1259    22036 /   extras_configcontext_tenants_tenant_id_8d0aa28e    INDEX     }   CREATE INDEX extras_configcontext_tenants_tenant_id_8d0aa28e ON public.extras_configcontext_tenants USING btree (tenant_id);
 C   DROP INDEX public.extras_configcontext_tenants_tenant_id_8d0aa28e;
       public            netbox    false    315            ?           1259    22037 %   extras_customfield_name_2fe72707_like    INDEX     x   CREATE INDEX extras_customfield_name_2fe72707_like ON public.extras_customfield USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.extras_customfield_name_2fe72707_like;
       public            netbox    false    317            ?           1259    22038 3   extras_customfield_obj_type_contenttype_id_6890b714    INDEX     ?   CREATE INDEX extras_customfield_obj_type_contenttype_id_6890b714 ON public.extras_customfield_content_types USING btree (contenttype_id);
 G   DROP INDEX public.extras_customfield_obj_type_contenttype_id_6890b714;
       public            netbox    false    318            ?           1259    22039 3   extras_customfield_obj_type_customfield_id_82480f86    INDEX     ?   CREATE INDEX extras_customfield_obj_type_customfield_id_82480f86 ON public.extras_customfield_content_types USING btree (customfield_id);
 G   DROP INDEX public.extras_customfield_obj_type_customfield_id_82480f86;
       public            netbox    false    318            ?           1259    22040 *   extras_customlink_content_type_id_4d35b063    INDEX     s   CREATE INDEX extras_customlink_content_type_id_4d35b063 ON public.extras_customlink USING btree (content_type_id);
 >   DROP INDEX public.extras_customlink_content_type_id_4d35b063;
       public            netbox    false    321            ?           1259    22041 $   extras_customlink_name_daed2d18_like    INDEX     v   CREATE INDEX extras_customlink_name_daed2d18_like ON public.extras_customlink USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.extras_customlink_name_daed2d18_like;
       public            netbox    false    321            ?           1259    22042 .   extras_exporttemplate_content_type_id_59737e21    INDEX     {   CREATE INDEX extras_exporttemplate_content_type_id_59737e21 ON public.extras_exporttemplate USING btree (content_type_id);
 B   DROP INDEX public.extras_exporttemplate_content_type_id_59737e21;
       public            netbox    false    323            ?           1259    22043 /   extras_imageattachment_content_type_id_90e0643d    INDEX     }   CREATE INDEX extras_imageattachment_content_type_id_90e0643d ON public.extras_imageattachment USING btree (content_type_id);
 C   DROP INDEX public.extras_imageattachment_content_type_id_90e0643d;
       public            netbox    false    325            ?           1259    22044 %   extras_jobresult_obj_type_id_475e80aa    INDEX     i   CREATE INDEX extras_jobresult_obj_type_id_475e80aa ON public.extras_jobresult USING btree (obj_type_id);
 9   DROP INDEX public.extras_jobresult_obj_type_id_475e80aa;
       public            netbox    false    327            ?           1259    22045 !   extras_jobresult_user_id_d35285ab    INDEX     a   CREATE INDEX extras_jobresult_user_id_d35285ab ON public.extras_jobresult USING btree (user_id);
 5   DROP INDEX public.extras_jobresult_user_id_d35285ab;
       public            netbox    false    327            ?           1259    22046 3   extras_objectchange_changed_object_type_id_b755bb60    INDEX     ?   CREATE INDEX extras_objectchange_changed_object_type_id_b755bb60 ON public.extras_objectchange USING btree (changed_object_type_id);
 G   DROP INDEX public.extras_objectchange_changed_object_type_id_b755bb60;
       public            netbox    false    329                       1259    22047 3   extras_objectchange_related_object_type_id_fe6e521f    INDEX     ?   CREATE INDEX extras_objectchange_related_object_type_id_fe6e521f ON public.extras_objectchange USING btree (related_object_type_id);
 G   DROP INDEX public.extras_objectchange_related_object_type_id_fe6e521f;
       public            netbox    false    329                       1259    22048 !   extras_objectchange_time_224380ea    INDEX     c   CREATE INDEX extras_objectchange_time_224380ea ON public.extras_objectchange USING btree ("time");
 5   DROP INDEX public.extras_objectchange_time_224380ea;
       public            netbox    false    329                       1259    22049 $   extras_objectchange_user_id_7fdf8186    INDEX     g   CREATE INDEX extras_objectchange_user_id_7fdf8186 ON public.extras_objectchange USING btree (user_id);
 8   DROP INDEX public.extras_objectchange_user_id_7fdf8186;
       public            netbox    false    329                       1259    22050    extras_tag_name_9550b3d9_like    INDEX     h   CREATE INDEX extras_tag_name_9550b3d9_like ON public.extras_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.extras_tag_name_9550b3d9_like;
       public            netbox    false    331            
           1259    22051    extras_tag_slug_aaa5b7e9_like    INDEX     h   CREATE INDEX extras_tag_slug_aaa5b7e9_like ON public.extras_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.extras_tag_slug_aaa5b7e9_like;
       public            netbox    false    331                       1259    22052 *   extras_taggeditem_content_type_id_ba5562ed    INDEX     s   CREATE INDEX extras_taggeditem_content_type_id_ba5562ed ON public.extras_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.extras_taggeditem_content_type_id_ba5562ed;
       public            netbox    false    333                       1259    22053 8   extras_taggeditem_content_type_id_object_id_80e28e23_idx    INDEX     ?   CREATE INDEX extras_taggeditem_content_type_id_object_id_80e28e23_idx ON public.extras_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.extras_taggeditem_content_type_id_object_id_80e28e23_idx;
       public            netbox    false    333    333                       1259    22054 $   extras_taggeditem_object_id_31b2aa77    INDEX     g   CREATE INDEX extras_taggeditem_object_id_31b2aa77 ON public.extras_taggeditem USING btree (object_id);
 8   DROP INDEX public.extras_taggeditem_object_id_31b2aa77;
       public            netbox    false    333                       1259    22055 !   extras_taggeditem_tag_id_d48af7c7    INDEX     a   CREATE INDEX extras_taggeditem_tag_id_d48af7c7 ON public.extras_taggeditem USING btree (tag_id);
 5   DROP INDEX public.extras_taggeditem_tag_id_d48af7c7;
       public            netbox    false    333                       1259    22056 !   extras_webhook_name_82cf60b5_like    INDEX     p   CREATE INDEX extras_webhook_name_82cf60b5_like ON public.extras_webhook USING btree (name varchar_pattern_ops);
 5   DROP INDEX public.extras_webhook_name_82cf60b5_like;
       public            netbox    false    335                       1259    22057 /   extras_webhook_obj_type_contenttype_id_85c7693b    INDEX     ?   CREATE INDEX extras_webhook_obj_type_contenttype_id_85c7693b ON public.extras_webhook_content_types USING btree (contenttype_id);
 C   DROP INDEX public.extras_webhook_obj_type_contenttype_id_85c7693b;
       public            netbox    false    336                       1259    22058 +   extras_webhook_obj_type_webhook_id_c7bed170    INDEX     z   CREATE INDEX extras_webhook_obj_type_webhook_id_c7bed170 ON public.extras_webhook_content_types USING btree (webhook_id);
 ?   DROP INDEX public.extras_webhook_obj_type_webhook_id_c7bed170;
       public            netbox    false    336            "           1259    22059    ipam_aggregate_rir_id_ef7a27bd    INDEX     [   CREATE INDEX ipam_aggregate_rir_id_ef7a27bd ON public.ipam_aggregate USING btree (rir_id);
 2   DROP INDEX public.ipam_aggregate_rir_id_ef7a27bd;
       public            netbox    false    339            #           1259    22060 !   ipam_aggregate_tenant_id_637dd1a1    INDEX     a   CREATE INDEX ipam_aggregate_tenant_id_637dd1a1 ON public.ipam_aggregate USING btree (tenant_id);
 5   DROP INDEX public.ipam_aggregate_tenant_id_637dd1a1;
       public            netbox    false    339            $           1259    22061 /   ipam_ipaddress_assigned_object_type_id_02354370    INDEX     }   CREATE INDEX ipam_ipaddress_assigned_object_type_id_02354370 ON public.ipam_ipaddress USING btree (assigned_object_type_id);
 C   DROP INDEX public.ipam_ipaddress_assigned_object_type_id_02354370;
       public            netbox    false    341            )           1259    22062 !   ipam_ipaddress_tenant_id_ac55acfd    INDEX     a   CREATE INDEX ipam_ipaddress_tenant_id_ac55acfd ON public.ipam_ipaddress USING btree (tenant_id);
 5   DROP INDEX public.ipam_ipaddress_tenant_id_ac55acfd;
       public            netbox    false    341            *           1259    22063    ipam_ipaddress_vrf_id_51fcc59b    INDEX     [   CREATE INDEX ipam_ipaddress_vrf_id_51fcc59b ON public.ipam_ipaddress USING btree (vrf_id);
 2   DROP INDEX public.ipam_ipaddress_vrf_id_51fcc59b;
       public            netbox    false    341            -           1259    22064    ipam_prefix_role_id_0a98d415    INDEX     W   CREATE INDEX ipam_prefix_role_id_0a98d415 ON public.ipam_prefix USING btree (role_id);
 0   DROP INDEX public.ipam_prefix_role_id_0a98d415;
       public            netbox    false    343            .           1259    22065    ipam_prefix_site_id_0b20df05    INDEX     W   CREATE INDEX ipam_prefix_site_id_0b20df05 ON public.ipam_prefix USING btree (site_id);
 0   DROP INDEX public.ipam_prefix_site_id_0b20df05;
       public            netbox    false    343            /           1259    22066    ipam_prefix_tenant_id_7ba1fcc4    INDEX     [   CREATE INDEX ipam_prefix_tenant_id_7ba1fcc4 ON public.ipam_prefix USING btree (tenant_id);
 2   DROP INDEX public.ipam_prefix_tenant_id_7ba1fcc4;
       public            netbox    false    343            0           1259    22067    ipam_prefix_vlan_id_1db91bff    INDEX     W   CREATE INDEX ipam_prefix_vlan_id_1db91bff ON public.ipam_prefix USING btree (vlan_id);
 0   DROP INDEX public.ipam_prefix_vlan_id_1db91bff;
       public            netbox    false    343            1           1259    22068    ipam_prefix_vrf_id_34f78ed0    INDEX     U   CREATE INDEX ipam_prefix_vrf_id_34f78ed0 ON public.ipam_prefix USING btree (vrf_id);
 /   DROP INDEX public.ipam_prefix_vrf_id_34f78ed0;
       public            netbox    false    343            2           1259    22069    ipam_rir_name_64a71982_like    INDEX     d   CREATE INDEX ipam_rir_name_64a71982_like ON public.ipam_rir USING btree (name varchar_pattern_ops);
 /   DROP INDEX public.ipam_rir_name_64a71982_like;
       public            netbox    false    345            7           1259    22070    ipam_rir_slug_ff1a369a_like    INDEX     d   CREATE INDEX ipam_rir_slug_ff1a369a_like ON public.ipam_rir USING btree (slug varchar_pattern_ops);
 /   DROP INDEX public.ipam_rir_slug_ff1a369a_like;
       public            netbox    false    345            :           1259    22071    ipam_role_name_13784849_like    INDEX     f   CREATE INDEX ipam_role_name_13784849_like ON public.ipam_role USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.ipam_role_name_13784849_like;
       public            netbox    false    347            ?           1259    22072    ipam_role_slug_309ca14c_like    INDEX     f   CREATE INDEX ipam_role_slug_309ca14c_like ON public.ipam_role USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.ipam_role_slug_309ca14c_like;
       public            netbox    false    347            B           1259    22073 #   ipam_routetarget_name_212be79f_like    INDEX     t   CREATE INDEX ipam_routetarget_name_212be79f_like ON public.ipam_routetarget USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.ipam_routetarget_name_212be79f_like;
       public            netbox    false    349            G           1259    22074 #   ipam_routetarget_tenant_id_5a0b35e8    INDEX     e   CREATE INDEX ipam_routetarget_tenant_id_5a0b35e8 ON public.ipam_routetarget USING btree (tenant_id);
 7   DROP INDEX public.ipam_routetarget_tenant_id_5a0b35e8;
       public            netbox    false    349            H           1259    22075    ipam_service_device_id_b4d2bb9c    INDEX     ]   CREATE INDEX ipam_service_device_id_b4d2bb9c ON public.ipam_service USING btree (device_id);
 3   DROP INDEX public.ipam_service_device_id_b4d2bb9c;
       public            netbox    false    351            L           1259    22076 .   ipam_service_ipaddresses_ipaddress_id_b4138c6d    INDEX     {   CREATE INDEX ipam_service_ipaddresses_ipaddress_id_b4138c6d ON public.ipam_service_ipaddresses USING btree (ipaddress_id);
 B   DROP INDEX public.ipam_service_ipaddresses_ipaddress_id_b4138c6d;
       public            netbox    false    353            O           1259    22077 ,   ipam_service_ipaddresses_service_id_ae26b9ab    INDEX     w   CREATE INDEX ipam_service_ipaddresses_service_id_ae26b9ab ON public.ipam_service_ipaddresses USING btree (service_id);
 @   DROP INDEX public.ipam_service_ipaddresses_service_id_ae26b9ab;
       public            netbox    false    353            K           1259    22078 (   ipam_service_virtual_machine_id_e8b53562    INDEX     o   CREATE INDEX ipam_service_virtual_machine_id_e8b53562 ON public.ipam_service USING btree (virtual_machine_id);
 <   DROP INDEX public.ipam_service_virtual_machine_id_e8b53562;
       public            netbox    false    351            R           1259    22079    ipam_vlan_group_id_88cbfa62    INDEX     U   CREATE INDEX ipam_vlan_group_id_88cbfa62 ON public.ipam_vlan USING btree (group_id);
 /   DROP INDEX public.ipam_vlan_group_id_88cbfa62;
       public            netbox    false    355            Y           1259    22080    ipam_vlan_role_id_f5015962    INDEX     S   CREATE INDEX ipam_vlan_role_id_f5015962 ON public.ipam_vlan USING btree (role_id);
 .   DROP INDEX public.ipam_vlan_role_id_f5015962;
       public            netbox    false    355            Z           1259    22081    ipam_vlan_site_id_a59334e3    INDEX     S   CREATE INDEX ipam_vlan_site_id_a59334e3 ON public.ipam_vlan USING btree (site_id);
 .   DROP INDEX public.ipam_vlan_site_id_a59334e3;
       public            netbox    false    355            [           1259    22082    ipam_vlan_tenant_id_71a8290d    INDEX     W   CREATE INDEX ipam_vlan_tenant_id_71a8290d ON public.ipam_vlan USING btree (tenant_id);
 0   DROP INDEX public.ipam_vlan_tenant_id_71a8290d;
       public            netbox    false    355            ^           1259    22083    ipam_vlangroup_site_id_264f36f6    INDEX     ]   CREATE INDEX ipam_vlangroup_site_id_264f36f6 ON public.ipam_vlangroup USING btree (site_id);
 3   DROP INDEX public.ipam_vlangroup_site_id_264f36f6;
       public            netbox    false    357            c           1259    22084    ipam_vlangroup_slug_40abcf6b    INDEX     W   CREATE INDEX ipam_vlangroup_slug_40abcf6b ON public.ipam_vlangroup USING btree (slug);
 0   DROP INDEX public.ipam_vlangroup_slug_40abcf6b;
       public            netbox    false    357            d           1259    22085 !   ipam_vlangroup_slug_40abcf6b_like    INDEX     p   CREATE INDEX ipam_vlangroup_slug_40abcf6b_like ON public.ipam_vlangroup USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.ipam_vlangroup_slug_40abcf6b_like;
       public            netbox    false    357            m           1259    22086 /   ipam_vrf_export_targets_routetarget_id_8d9319f7    INDEX     }   CREATE INDEX ipam_vrf_export_targets_routetarget_id_8d9319f7 ON public.ipam_vrf_export_targets USING btree (routetarget_id);
 C   DROP INDEX public.ipam_vrf_export_targets_routetarget_id_8d9319f7;
       public            netbox    false    360            n           1259    22087 '   ipam_vrf_export_targets_vrf_id_6f4875c4    INDEX     m   CREATE INDEX ipam_vrf_export_targets_vrf_id_6f4875c4 ON public.ipam_vrf_export_targets USING btree (vrf_id);
 ;   DROP INDEX public.ipam_vrf_export_targets_vrf_id_6f4875c4;
       public            netbox    false    360            s           1259    22088 /   ipam_vrf_import_targets_routetarget_id_0e05b144    INDEX     }   CREATE INDEX ipam_vrf_import_targets_routetarget_id_0e05b144 ON public.ipam_vrf_import_targets USING btree (routetarget_id);
 C   DROP INDEX public.ipam_vrf_import_targets_routetarget_id_0e05b144;
       public            netbox    false    363            t           1259    22089 '   ipam_vrf_import_targets_vrf_id_ed491b19    INDEX     m   CREATE INDEX ipam_vrf_import_targets_vrf_id_ed491b19 ON public.ipam_vrf_import_targets USING btree (vrf_id);
 ;   DROP INDEX public.ipam_vrf_import_targets_vrf_id_ed491b19;
       public            netbox    false    363            g           1259    22090    ipam_vrf_rd_0ac1bde1_like    INDEX     `   CREATE INDEX ipam_vrf_rd_0ac1bde1_like ON public.ipam_vrf USING btree (rd varchar_pattern_ops);
 -   DROP INDEX public.ipam_vrf_rd_0ac1bde1_like;
       public            netbox    false    359            j           1259    22091    ipam_vrf_tenant_id_498b0051    INDEX     U   CREATE INDEX ipam_vrf_tenant_id_498b0051 ON public.ipam_vrf USING btree (tenant_id);
 /   DROP INDEX public.ipam_vrf_tenant_id_498b0051;
       public            netbox    false    359            w           1259    22092 /   secrets_secret_assigned_object_type_id_285b92a4    INDEX     }   CREATE INDEX secrets_secret_assigned_object_type_id_285b92a4 ON public.secrets_secret USING btree (assigned_object_type_id);
 C   DROP INDEX public.secrets_secret_assigned_object_type_id_285b92a4;
       public            netbox    false    365            |           1259    22093    secrets_secret_role_id_39d9347f    INDEX     ]   CREATE INDEX secrets_secret_role_id_39d9347f ON public.secrets_secret USING btree (role_id);
 3   DROP INDEX public.secrets_secret_role_id_39d9347f;
       public            netbox    false    365            }           1259    22094 %   secrets_secretrole_name_7b6ee7a4_like    INDEX     x   CREATE INDEX secrets_secretrole_name_7b6ee7a4_like ON public.secrets_secretrole USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.secrets_secretrole_name_7b6ee7a4_like;
       public            netbox    false    367            ?           1259    22095 %   secrets_secretrole_slug_a06c885e_like    INDEX     x   CREATE INDEX secrets_secretrole_slug_a06c885e_like ON public.secrets_secretrole USING btree (slug varchar_pattern_ops);
 9   DROP INDEX public.secrets_secretrole_slug_a06c885e_like;
       public            netbox    false    367            ?           1259    22096    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public            netbox    false    373            ?           1259    22097    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public            netbox    false    373            ?           1259    22098 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public            netbox    false    375            ?           1259    22099 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     ?   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public            netbox    false    375    375            ?           1259    22100 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public            netbox    false    375            ?           1259    22101 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public            netbox    false    375            ?           1259    22102     tenancy_tenant_group_id_7daef6f4    INDEX     _   CREATE INDEX tenancy_tenant_group_id_7daef6f4 ON public.tenancy_tenant USING btree (group_id);
 4   DROP INDEX public.tenancy_tenant_group_id_7daef6f4;
       public            netbox    false    377            ?           1259    22103 !   tenancy_tenant_name_f6e5b2f5_like    INDEX     p   CREATE INDEX tenancy_tenant_name_f6e5b2f5_like ON public.tenancy_tenant USING btree (name varchar_pattern_ops);
 5   DROP INDEX public.tenancy_tenant_name_f6e5b2f5_like;
       public            netbox    false    377            ?           1259    22104 !   tenancy_tenant_slug_0716575e_like    INDEX     p   CREATE INDEX tenancy_tenant_slug_0716575e_like ON public.tenancy_tenant USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.tenancy_tenant_slug_0716575e_like;
       public            netbox    false    377            ?           1259    22105 &   tenancy_tenantgroup_name_53363199_like    INDEX     z   CREATE INDEX tenancy_tenantgroup_name_53363199_like ON public.tenancy_tenantgroup USING btree (name varchar_pattern_ops);
 :   DROP INDEX public.tenancy_tenantgroup_name_53363199_like;
       public            netbox    false    379            ?           1259    22106 &   tenancy_tenantgroup_parent_id_2542fc18    INDEX     k   CREATE INDEX tenancy_tenantgroup_parent_id_2542fc18 ON public.tenancy_tenantgroup USING btree (parent_id);
 :   DROP INDEX public.tenancy_tenantgroup_parent_id_2542fc18;
       public            netbox    false    379            ?           1259    22107 &   tenancy_tenantgroup_slug_e2af1cb6_like    INDEX     z   CREATE INDEX tenancy_tenantgroup_slug_e2af1cb6_like ON public.tenancy_tenantgroup USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.tenancy_tenantgroup_slug_e2af1cb6_like;
       public            netbox    false    379            ?           1259    22108 $   tenancy_tenantgroup_tree_id_769a98bf    INDEX     g   CREATE INDEX tenancy_tenantgroup_tree_id_769a98bf ON public.tenancy_tenantgroup USING btree (tree_id);
 8   DROP INDEX public.tenancy_tenantgroup_tree_id_769a98bf;
       public            netbox    false    379            ?           1259    22109 /   users_objectpermission_groups_group_id_fb7ba6e0    INDEX     }   CREATE INDEX users_objectpermission_groups_group_id_fb7ba6e0 ON public.users_objectpermission_groups USING btree (group_id);
 C   DROP INDEX public.users_objectpermission_groups_group_id_fb7ba6e0;
       public            netbox    false    382            ?           1259    22110 :   users_objectpermission_groups_objectpermission_id_2f7cc117    INDEX     ?   CREATE INDEX users_objectpermission_groups_objectpermission_id_2f7cc117 ON public.users_objectpermission_groups USING btree (objectpermission_id);
 N   DROP INDEX public.users_objectpermission_groups_objectpermission_id_2f7cc117;
       public            netbox    false    382            ?           1259    22111 7   users_objectpermission_obj_objectpermission_id_38c7d8f5    INDEX     ?   CREATE INDEX users_objectpermission_obj_objectpermission_id_38c7d8f5 ON public.users_objectpermission_object_types USING btree (objectpermission_id);
 K   DROP INDEX public.users_objectpermission_obj_objectpermission_id_38c7d8f5;
       public            netbox    false    385            ?           1259    22112 ;   users_objectpermission_object_types_contenttype_id_594b1cc7    INDEX     ?   CREATE INDEX users_objectpermission_object_types_contenttype_id_594b1cc7 ON public.users_objectpermission_object_types USING btree (contenttype_id);
 O   DROP INDEX public.users_objectpermission_object_types_contenttype_id_594b1cc7;
       public            netbox    false    385            ?           1259    22113 9   users_objectpermission_users_objectpermission_id_78a9c2e6    INDEX     ?   CREATE INDEX users_objectpermission_users_objectpermission_id_78a9c2e6 ON public.users_objectpermission_users USING btree (objectpermission_id);
 M   DROP INDEX public.users_objectpermission_users_objectpermission_id_78a9c2e6;
       public            netbox    false    387            ?           1259    22114 -   users_objectpermission_users_user_id_16c0905d    INDEX     y   CREATE INDEX users_objectpermission_users_user_id_16c0905d ON public.users_objectpermission_users USING btree (user_id);
 A   DROP INDEX public.users_objectpermission_users_user_id_16c0905d;
       public            netbox    false    387            ?           1259    22115    users_token_key_820deccd_like    INDEX     h   CREATE INDEX users_token_key_820deccd_like ON public.users_token USING btree (key varchar_pattern_ops);
 1   DROP INDEX public.users_token_key_820deccd_like;
       public            netbox    false    389            ?           1259    22116    users_token_user_id_af964690    INDEX     W   CREATE INDEX users_token_user_id_af964690 ON public.users_token USING btree (user_id);
 0   DROP INDEX public.users_token_user_id_af964690;
       public            netbox    false    389            ?           1259    22117 (   virtualization_cluster_group_id_de379828    INDEX     o   CREATE INDEX virtualization_cluster_group_id_de379828 ON public.virtualization_cluster USING btree (group_id);
 <   DROP INDEX public.virtualization_cluster_group_id_de379828;
       public            netbox    false    393            ?           1259    22118 )   virtualization_cluster_name_1b59a61b_like    INDEX     ?   CREATE INDEX virtualization_cluster_name_1b59a61b_like ON public.virtualization_cluster USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.virtualization_cluster_name_1b59a61b_like;
       public            netbox    false    393            ?           1259    22119 '   virtualization_cluster_site_id_4d5af282    INDEX     m   CREATE INDEX virtualization_cluster_site_id_4d5af282 ON public.virtualization_cluster USING btree (site_id);
 ;   DROP INDEX public.virtualization_cluster_site_id_4d5af282;
       public            netbox    false    393            ?           1259    22120 )   virtualization_cluster_tenant_id_bc2868d0    INDEX     q   CREATE INDEX virtualization_cluster_tenant_id_bc2868d0 ON public.virtualization_cluster USING btree (tenant_id);
 =   DROP INDEX public.virtualization_cluster_tenant_id_bc2868d0;
       public            netbox    false    393            ?           1259    22121 '   virtualization_cluster_type_id_4efafb0a    INDEX     m   CREATE INDEX virtualization_cluster_type_id_4efafb0a ON public.virtualization_cluster USING btree (type_id);
 ;   DROP INDEX public.virtualization_cluster_type_id_4efafb0a;
       public            netbox    false    393            ?           1259    22122 .   virtualization_clustergroup_name_4fcd26b4_like    INDEX     ?   CREATE INDEX virtualization_clustergroup_name_4fcd26b4_like ON public.virtualization_clustergroup USING btree (name varchar_pattern_ops);
 B   DROP INDEX public.virtualization_clustergroup_name_4fcd26b4_like;
       public            netbox    false    395            ?           1259    22123 .   virtualization_clustergroup_slug_57ca1d23_like    INDEX     ?   CREATE INDEX virtualization_clustergroup_slug_57ca1d23_like ON public.virtualization_clustergroup USING btree (slug varchar_pattern_ops);
 B   DROP INDEX public.virtualization_clustergroup_slug_57ca1d23_like;
       public            netbox    false    395            ?           1259    22124 -   virtualization_clustertype_name_ea854d3d_like    INDEX     ?   CREATE INDEX virtualization_clustertype_name_ea854d3d_like ON public.virtualization_clustertype USING btree (name varchar_pattern_ops);
 A   DROP INDEX public.virtualization_clustertype_name_ea854d3d_like;
       public            netbox    false    397            ?           1259    22125 -   virtualization_clustertype_slug_8ee4d0e0_like    INDEX     ?   CREATE INDEX virtualization_clustertype_slug_8ee4d0e0_like ON public.virtualization_clustertype USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public.virtualization_clustertype_slug_8ee4d0e0_like;
       public            netbox    false    397            ?           1259    22126 1   virtualization_virtualmachine_cluster_id_6c9f9047    INDEX     ?   CREATE INDEX virtualization_virtualmachine_cluster_id_6c9f9047 ON public.virtualization_virtualmachine USING btree (cluster_id);
 E   DROP INDEX public.virtualization_virtualmachine_cluster_id_6c9f9047;
       public            netbox    false    399            ?           1259    22127 2   virtualization_virtualmachine_platform_id_a6c5ccb2    INDEX     ?   CREATE INDEX virtualization_virtualmachine_platform_id_a6c5ccb2 ON public.virtualization_virtualmachine USING btree (platform_id);
 F   DROP INDEX public.virtualization_virtualmachine_platform_id_a6c5ccb2;
       public            netbox    false    399            ?           1259    22128 .   virtualization_virtualmachine_role_id_0cc898f9    INDEX     {   CREATE INDEX virtualization_virtualmachine_role_id_0cc898f9 ON public.virtualization_virtualmachine USING btree (role_id);
 B   DROP INDEX public.virtualization_virtualmachine_role_id_0cc898f9;
       public            netbox    false    399            ?           1259    22129 0   virtualization_virtualmachine_tenant_id_d00d1d77    INDEX        CREATE INDEX virtualization_virtualmachine_tenant_id_d00d1d77 ON public.virtualization_virtualmachine USING btree (tenant_id);
 D   DROP INDEX public.virtualization_virtualmachine_tenant_id_d00d1d77;
       public            netbox    false    399            ?           1259    22130 8   virtualization_vminterface_tagged_vlans_vlan_id_4e77411e    INDEX     ?   CREATE INDEX virtualization_vminterface_tagged_vlans_vlan_id_4e77411e ON public.virtualization_vminterface_tagged_vlans USING btree (vlan_id);
 L   DROP INDEX public.virtualization_vminterface_tagged_vlans_vlan_id_4e77411e;
       public            netbox    false    403            ?           1259    22131 ?   virtualization_vminterface_tagged_vlans_vminterface_id_904b12de    INDEX     ?   CREATE INDEX virtualization_vminterface_tagged_vlans_vminterface_id_904b12de ON public.virtualization_vminterface_tagged_vlans USING btree (vminterface_id);
 S   DROP INDEX public.virtualization_vminterface_tagged_vlans_vminterface_id_904b12de;
       public            netbox    false    403            ?           1259    22132 4   virtualization_vminterface_untagged_vlan_id_aea4fc69    INDEX     ?   CREATE INDEX virtualization_vminterface_untagged_vlan_id_aea4fc69 ON public.virtualization_vminterface USING btree (untagged_vlan_id);
 H   DROP INDEX public.virtualization_vminterface_untagged_vlan_id_aea4fc69;
       public            netbox    false    401            ?           1259    22133 6   virtualization_vminterface_virtual_machine_id_e9f89829    INDEX     ?   CREATE INDEX virtualization_vminterface_virtual_machine_id_e9f89829 ON public.virtualization_vminterface USING btree (virtual_machine_id);
 J   DROP INDEX public.virtualization_vminterface_virtual_machine_id_e9f89829;
       public            netbox    false    401            ?           2606    22134 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          netbox    false    3664    204    206                        2606    22139 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          netbox    false    204    202    3653                       2606    22144 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          netbox    false    292    3998    206                       2606    22149 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          netbox    false    209    3653    202                       2606    22154 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          netbox    false    209    3666    208                       2606    22159 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          netbox    false    212    3664    206                       2606    22164 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          netbox    false    212    3666    208                       2606    22169 N   circuits_circuit circuits_circuit_provider_id_d9195418_fk_circuits_provider_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_d9195418_fk_circuits_provider_id FOREIGN KEY (provider_id) REFERENCES public.circuits_provider(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_provider_id_d9195418_fk_circuits_provider_id;
       public          netbox    false    3710    220    214                       2606    22174 I   circuits_circuit circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id;
       public          netbox    false    214    4258    377                       2606    22179 M   circuits_circuit circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id FOREIGN KEY (type_id) REFERENCES public.circuits_circuittype(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id;
       public          netbox    false    218    3702    214            	           2606    22184 Z   circuits_circuittermination circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co;
       public          netbox    false    292    3998    216            
           2606    22189 O   circuits_circuittermination circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl;
       public          netbox    false    224    3729    216                       2606    22194 Q   circuits_circuittermination circuits_circuitterm_circuit_id_257e87e7_fk_circuits_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm_circuit_id_257e87e7_fk_circuits_ FOREIGN KEY (circuit_id) REFERENCES public.circuits_circuit(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm_circuit_id_257e87e7_fk_circuits_;
       public          netbox    false    214    3683    216                       2606    22199 Z   circuits_circuittermination circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id;
       public          netbox    false    3717    216    222                       2606    22204 X   circuits_circuittermination circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id;
       public          netbox    false    286    3981    216                       2606    22209 I   dcim_cable dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id FOREIGN KEY (_termination_a_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id;
       public          netbox    false    234    3763    222                       2606    22214 I   dcim_cable dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id FOREIGN KEY (_termination_b_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id;
       public          netbox    false    222    3763    234                       2606    22219 @   dcim_cable dcim_cable_termination_a_type_i_a614bab8_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_i_a614bab8_fk_django_co FOREIGN KEY (termination_a_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_a_type_i_a614bab8_fk_django_co;
       public          netbox    false    292    222    3998                       2606    22224 @   dcim_cable dcim_cable_termination_b_type_i_a91595d0_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_i_a91595d0_fk_django_co FOREIGN KEY (termination_b_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_b_type_i_a91595d0_fk_django_co;
       public          netbox    false    3998    292    222                       2606    22229 G   dcim_cablepath dcim_cablepath_destination_type_id_a8c1654b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_destination_type_id_a8c1654b_fk_django_co FOREIGN KEY (destination_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_destination_type_id_a8c1654b_fk_django_co;
       public          netbox    false    3998    224    292                       2606    22234 B   dcim_cablepath dcim_cablepath_origin_type_id_6de54f6d_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_6de54f6d_fk_django_co FOREIGN KEY (origin_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_origin_type_id_6de54f6d_fk_django_co;
       public          netbox    false    224    292    3998                       2606    22239 K   dcim_consoleport dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co;
       public          netbox    false    226    292    3998                       2606    22244 H   dcim_consoleport dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id;
       public          netbox    false    224    3729    226                       2606    22249 D   dcim_consoleport dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id;
       public          netbox    false    3717    226    222                       2606    22254 F   dcim_consoleport dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id;
       public          netbox    false    226    234    3763                       2606    22259 R   dcim_consoleporttemplate dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi;
       public          netbox    false    242    3805    228                       2606    22264 U   dcim_consoleserverport dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co;
       public          netbox    false    292    3998    230                       2606    22269 X   dcim_consoleserverporttemplate dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi;
       public          netbox    false    3805    232    242                       2606    22274 T   dcim_consoleserverport dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id;
       public          netbox    false    224    3729    230                       2606    22279 P   dcim_consoleserverport dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id;
       public          netbox    false    222    3717    230                       2606    22284 R   dcim_consoleserverport dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id;
       public          netbox    false    234    230    3763                       2606    22289 H   dcim_device dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id;
       public          netbox    false    393    4307    234                       2606    22294 E   dcim_device dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id FOREIGN KEY (device_role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id;
       public          netbox    false    240    3795    234                        2606    22299 E   dcim_device dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id;
       public          netbox    false    242    3805    234            !           2606    22304 @   dcim_device dcim_device_platform_id_468138f1_fk_dcim_platform_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_platform_id_468138f1_fk_dcim_platform_id FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_platform_id_468138f1_fk_dcim_platform_id;
       public          netbox    false    234    258    3871            "           2606    22309 D   dcim_device dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id;
       public          netbox    false    234    341    4136            #           2606    22314 D   dcim_device dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id;
       public          netbox    false    4136    234    341            $           2606    22319 8   dcim_device dcim_device_rack_id_23bde71f_fk_dcim_rack_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_23bde71f_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_rack_id_23bde71f_fk_dcim_rack_id;
       public          netbox    false    272    3927    234            %           2606    22324 8   dcim_device dcim_device_site_id_ff897cf6_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_ff897cf6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_site_id_ff897cf6_fk_dcim_site_id;
       public          netbox    false    234    286    3981            &           2606    22329 ?   dcim_device dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id;
       public          netbox    false    377    234    4258            '           2606    22334 @   dcim_device dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt FOREIGN KEY (virtual_chassis_id) REFERENCES public.dcim_virtualchassis(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt;
       public          netbox    false    3990    288    234            (           2606    22339 B   dcim_devicebay dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id;
       public          netbox    false    3763    236    234            )           2606    22344 L   dcim_devicebay dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id FOREIGN KEY (installed_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id;
       public          netbox    false    234    3763    236            *           2606    22349 P   dcim_devicebaytemplate dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi;
       public          netbox    false    238    242    3805            +           2606    22354 E   dcim_devicetype dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu;
       public          netbox    false    3862    242    255            ,           2606    22359 G   dcim_frontport dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co;
       public          netbox    false    244    3998    292            -           2606    22364 @   dcim_frontport dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id;
       public          netbox    false    222    244    3717            .           2606    22369 B   dcim_frontport dcim_frontport_device_id_950557b5_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_950557b5_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_device_id_950557b5_fk_dcim_device_id;
       public          netbox    false    3763    234    244            /           2606    22374 G   dcim_frontport dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearport(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id;
       public          netbox    false    280    3961    244            0           2606    22379 P   dcim_frontporttemplate dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi;
       public          netbox    false    242    246    3805            1           2606    22384 N   dcim_frontporttemplate dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearporttemplate(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear;
       public          netbox    false    3966    246    282            2           2606    22389 G   dcim_interface dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co;
       public          netbox    false    248    3998    292            3           2606    22394 D   dcim_interface dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id;
       public          netbox    false    224    3729    248            4           2606    22399 @   dcim_interface dcim_interface_cable_id_1b264edb_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_cable_id_1b264edb_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_cable_id_1b264edb_fk_dcim_cable_id;
       public          netbox    false    222    3717    248            5           2606    22404 B   dcim_interface dcim_interface_device_id_359c6115_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_359c6115_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_device_id_359c6115_fk_dcim_device_id;
       public          netbox    false    3763    234    248            6           2606    22409 B   dcim_interface dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id FOREIGN KEY (lag_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id;
       public          netbox    false    248    248    3834            8           2606    22414 S   dcim_interface_tagged_vlans dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte FOREIGN KEY (interface_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte;
       public          netbox    false    248    250    3834            9           2606    22419 X   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id;
       public          netbox    false    250    355    4184            7           2606    22424 G   dcim_interface dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id;
       public          netbox    false    4184    248    355            :           2606    22429 P   dcim_interfacetemplate dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi;
       public          netbox    false    242    252    3805            ;           2606    22434 J   dcim_inventoryitem dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id;
       public          netbox    false    234    254    3763            <           2606    22439 K   dcim_inventoryitem dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu;
       public          netbox    false    255    254    3862            =           2606    22444 Q   dcim_inventoryitem dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id FOREIGN KEY (parent_id) REFERENCES public.dcim_inventoryitem(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id;
       public          netbox    false    254    254    3857            >           2606    22449 L   dcim_platform dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id;
       public          netbox    false    255    258    3862            ?           2606    22454 G   dcim_powerfeed dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co;
       public          netbox    false    292    260    3998            @           2606    22459 D   dcim_powerfeed dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id;
       public          netbox    false    224    260    3729            A           2606    22464 @   dcim_powerfeed dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id;
       public          netbox    false    222    260    3717            B           2606    22469 K   dcim_powerfeed dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id FOREIGN KEY (power_panel_id) REFERENCES public.dcim_powerpanel(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id;
       public          netbox    false    266    260    3900            C           2606    22474 >   dcim_powerfeed dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id;
       public          netbox    false    272    260    3927            D           2606    22479 K   dcim_poweroutlet dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co;
       public          netbox    false    3998    292    262            E           2606    22484 H   dcim_poweroutlet dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id;
       public          netbox    false    262    224    3729            F           2606    22489 D   dcim_poweroutlet dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id;
       public          netbox    false    3717    262    222            G           2606    22494 F   dcim_poweroutlet dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id;
       public          netbox    false    234    262    3763            H           2606    22499 M   dcim_poweroutlet dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerport(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id;
       public          netbox    false    262    3912    268            I           2606    22504 R   dcim_poweroutlettemplate dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi;
       public          netbox    false    264    3805    242            J           2606    22509 Q   dcim_poweroutlettemplate dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerporttemplate(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe;
       public          netbox    false    270    264    3917            K           2606    22514 K   dcim_powerpanel dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id FOREIGN KEY (rack_group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id;
       public          netbox    false    266    3933    274            L           2606    22519 @   dcim_powerpanel dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id;
       public          netbox    false    3981    266    286            M           2606    22524 G   dcim_powerport dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co;
       public          netbox    false    268    292    3998            N           2606    22529 D   dcim_powerport dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id;
       public          netbox    false    3729    268    224            O           2606    22534 @   dcim_powerport dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id;
       public          netbox    false    268    3717    222            P           2606    22539 B   dcim_powerport dcim_powerport_device_id_ef7185ae_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_ef7185ae_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_device_id_ef7185ae_fk_dcim_device_id;
       public          netbox    false    3763    234    268            Q           2606    22544 P   dcim_powerporttemplate dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi;
       public          netbox    false    3805    242    270            R           2606    22549 :   dcim_rack dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id FOREIGN KEY (group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id;
       public          netbox    false    274    272    3933            S           2606    22554 8   dcim_rack dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id FOREIGN KEY (role_id) REFERENCES public.dcim_rackrole(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id;
       public          netbox    false    278    272    3951            T           2606    22559 4   dcim_rack dcim_rack_site_id_403c7b3a_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_site_id_403c7b3a_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_site_id_403c7b3a_fk_dcim_site_id;
       public          netbox    false    3981    286    272            U           2606    22564 ;   dcim_rack dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id;
       public          netbox    false    4258    272    377            V           2606    22569 E   dcim_rackgroup dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id FOREIGN KEY (parent_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id;
       public          netbox    false    274    3933    274            W           2606    22574 >   dcim_rackgroup dcim_rackgroup_site_id_13520e89_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_13520e89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_13520e89_fk_dcim_site_id;
       public          netbox    false    274    3981    286            X           2606    22579 J   dcim_rackreservation dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id;
       public          netbox    false    3927    272    276            Y           2606    22584 Q   dcim_rackreservation dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id;
       public          netbox    false    276    4258    377            Z           2606    22589 J   dcim_rackreservation dcim_rackreservation_user_id_0785a527_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_user_id_0785a527_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_user_id_0785a527_fk_auth_user_id;
       public          netbox    false    208    276    3666            [           2606    22594 E   dcim_rearport dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co;
       public          netbox    false    280    3998    292            \           2606    22599 >   dcim_rearport dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id;
       public          netbox    false    280    3717    222            ]           2606    22604 @   dcim_rearport dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id;
       public          netbox    false    3763    234    280            ^           2606    22609 O   dcim_rearporttemplate dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi;
       public          netbox    false    282    3805    242            _           2606    22614 <   dcim_region dcim_region_parent_id_2486f5d4_fk_dcim_region_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_parent_id_2486f5d4_fk_dcim_region_id FOREIGN KEY (parent_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_parent_id_2486f5d4_fk_dcim_region_id;
       public          netbox    false    284    3972    284            `           2606    22619 8   dcim_site dcim_site_region_id_45210932_fk_dcim_region_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_region_id_45210932_fk_dcim_region_id FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_region_id_45210932_fk_dcim_region_id;
       public          netbox    false    3972    286    284            a           2606    22624 ;   dcim_site dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id;
       public          netbox    false    286    4258    377            b           2606    22629 L   dcim_virtualchassis dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id FOREIGN KEY (master_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id;
       public          netbox    false    234    288    3763            c           2606    22634 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          netbox    false    290    3998    292            d           2606    22639 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          netbox    false    290    3666    208            g           2606    22644 S   extras_configcontext_clusters extras_configcontext_cluster_id_6abd47a1_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_cluster_id_6abd47a1_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_cluster_id_6abd47a1_fk_virtualiz;
       public          netbox    false    393    300    4307            e           2606    22649 ^   extras_configcontext_cluster_groups extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz FOREIGN KEY (clustergroup_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz;
       public          netbox    false    395    4315    298            i           2606    22654 Z   extras_configcontext_platforms extras_configcontext_configcontext_id_2a516699_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_configcontext_id_2a516699_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_configcontext_id_2a516699_fk_extras_co;
       public          netbox    false    297    4009    303            m           2606    22659 V   extras_configcontext_roles extras_configcontext_configcontext_id_59b67386_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_configcontext_id_59b67386_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_configcontext_id_59b67386_fk_extras_co;
       public          netbox    false    4009    307    297            q           2606    22664 U   extras_configcontext_tags extras_configcontext_configcontext_id_64a392b1_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_configcontext_id_64a392b1_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_configcontext_id_64a392b1_fk_extras_co;
       public          netbox    false    311    297    4009            k           2606    22669 X   extras_configcontext_regions extras_configcontext_configcontext_id_73003dbc_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_configcontext_id_73003dbc_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_configcontext_id_73003dbc_fk_extras_co;
       public          netbox    false    4009    305    297            o           2606    22674 V   extras_configcontext_sites extras_configcontext_configcontext_id_8c54feb9_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_configcontext_id_8c54feb9_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_configcontext_id_8c54feb9_fk_extras_co;
       public          netbox    false    309    4009    297            f           2606    22679 _   extras_configcontext_cluster_groups extras_configcontext_configcontext_id_8f50b794_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_8f50b794_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_configcontext_id_8f50b794_fk_extras_co;
       public          netbox    false    297    4009    298            s           2606    22684 ^   extras_configcontext_tenant_groups extras_configcontext_configcontext_id_92f68345_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_92f68345_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_configcontext_id_92f68345_fk_extras_co;
       public          netbox    false    297    313    4009            u           2606    22689 X   extras_configcontext_tenants extras_configcontext_configcontext_id_b53552a6_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_configcontext_id_b53552a6_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_configcontext_id_b53552a6_fk_extras_co;
       public          netbox    false    4009    297    315            h           2606    22694 Y   extras_configcontext_clusters extras_configcontext_configcontext_id_ed579a40_fk_extras_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_configcontext_id_ed579a40_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_configcontext_id_ed579a40_fk_extras_co;
       public          netbox    false    300    4009    297            n           2606    22699 S   extras_configcontext_roles extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi FOREIGN KEY (devicerole_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi;
       public          netbox    false    3795    240    307            j           2606    22704 U   extras_configcontext_platforms extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat;
       public          netbox    false    258    3871    303            l           2606    22709 Q   extras_configcontext_regions extras_configcontext_region_id_35c6ba9d_fk_dcim_regi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_region_id_35c6ba9d_fk_dcim_regi FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_region_id_35c6ba9d_fk_dcim_regi;
       public          netbox    false    3972    305    284            p           2606    22714 V   extras_configcontext_sites extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id;
       public          netbox    false    309    3981    286            r           2606    22719 T   extras_configcontext_tags extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id;
       public          netbox    false    331    311    4105            v           2606    22724 Q   extras_configcontext_tenants extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t;
       public          netbox    false    315    377    4258            t           2606    22729 \   extras_configcontext_tenant_groups extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t FOREIGN KEY (tenantgroup_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t;
       public          netbox    false    379    313    4267            w           2606    22734 Z   extras_customfield_content_types extras_customfield_c_contenttype_id_2997ba90_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_contenttype_id_2997ba90_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_c_contenttype_id_2997ba90_fk_django_co;
       public          netbox    false    292    318    3998            x           2606    22739 Z   extras_customfield_content_types extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu FOREIGN KEY (customfield_id) REFERENCES public.extras_customfield(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu;
       public          netbox    false    4068    318    317            y           2606    22744 I   extras_customlink extras_customlink_content_type_id_4d35b063_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_content_type_id_4d35b063_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_content_type_id_4d35b063_fk_django_co;
       public          netbox    false    321    292    3998            z           2606    22749 P   extras_exporttemplate extras_exporttemplat_content_type_id_59737e21_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplat_content_type_id_59737e21_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplat_content_type_id_59737e21_fk_django_co;
       public          netbox    false    3998    292    323            {           2606    22754 Q   extras_imageattachment extras_imageattachme_content_type_id_90e0643d_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachme_content_type_id_90e0643d_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_imageattachment DROP CONSTRAINT extras_imageattachme_content_type_id_90e0643d_fk_django_co;
       public          netbox    false    3998    325    292            |           2606    22759 P   extras_jobresult extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id FOREIGN KEY (obj_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id;
       public          netbox    false    327    292    3998            }           2606    22764 B   extras_jobresult extras_jobresult_user_id_d35285ab_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_user_id_d35285ab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_user_id_d35285ab_fk_auth_user_id;
       public          netbox    false    208    3666    327            ~           2606    22769 R   extras_objectchange extras_objectchange_changed_object_type__b755bb60_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_changed_object_type__b755bb60_fk_django_co FOREIGN KEY (changed_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_changed_object_type__b755bb60_fk_django_co;
       public          netbox    false    329    292    3998                       2606    22774 R   extras_objectchange extras_objectchange_related_object_type__fe6e521f_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_related_object_type__fe6e521f_fk_django_co FOREIGN KEY (related_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_related_object_type__fe6e521f_fk_django_co;
       public          netbox    false    3998    329    292            ?           2606    22779 H   extras_objectchange extras_objectchange_user_id_7fdf8186_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_user_id_7fdf8186_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_user_id_7fdf8186_fk_auth_user_id;
       public          netbox    false    208    329    3666            ?           2606    22784 I   extras_taggeditem extras_taggeditem_content_type_id_ba5562ed_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_content_type_id_ba5562ed_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_content_type_id_ba5562ed_fk_django_co;
       public          netbox    false    292    333    3998            ?           2606    22789 D   extras_taggeditem extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id;
       public          netbox    false    331    333    4105            ?           2606    22794 V   extras_webhook_content_types extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co;
       public          netbox    false    292    336    3998            ?           2606    22799 R   extras_webhook_content_types extras_webhook_conte_webhook_id_0c169800_fk_extras_we    FK CONSTRAINT     ?   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_webhook_id_0c169800_fk_extras_we FOREIGN KEY (webhook_id) REFERENCES public.extras_webhook(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_conte_webhook_id_0c169800_fk_extras_we;
       public          netbox    false    335    336    4121            ?           2606    22804 <   ipam_aggregate ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id FOREIGN KEY (rir_id) REFERENCES public.ipam_rir(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id;
       public          netbox    false    339    345    4150            ?           2606    22809 E   ipam_aggregate ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id;
       public          netbox    false    4258    339    377            ?           2606    22814 H   ipam_ipaddress ipam_ipaddress_assigned_object_type_02354370_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_assigned_object_type_02354370_fk_django_co FOREIGN KEY (assigned_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_assigned_object_type_02354370_fk_django_co;
       public          netbox    false    3998    341    292            ?           2606    22819 I   ipam_ipaddress ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id FOREIGN KEY (nat_inside_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id;
       public          netbox    false    341    341    4136            ?           2606    22824 E   ipam_ipaddress ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id;
       public          netbox    false    377    341    4258            ?           2606    22829 <   ipam_ipaddress ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id;
       public          netbox    false    4198    359    341            ?           2606    22834 8   ipam_prefix ipam_prefix_role_id_0a98d415_fk_ipam_role_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_role_id_0a98d415_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_role_id_0a98d415_fk_ipam_role_id;
       public          netbox    false    4158    343    347            ?           2606    22839 8   ipam_prefix ipam_prefix_site_id_0b20df05_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_site_id_0b20df05_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_site_id_0b20df05_fk_dcim_site_id;
       public          netbox    false    3981    343    286            ?           2606    22844 ?   ipam_prefix ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id;
       public          netbox    false    343    4258    377            ?           2606    22849 8   ipam_prefix ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id;
       public          netbox    false    343    4184    355            ?           2606    22854 6   ipam_prefix ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id;
       public          netbox    false    359    343    4198            ?           2606    22859 I   ipam_routetarget ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id;
       public          netbox    false    4258    349    377            ?           2606    22864 >   ipam_service ipam_service_device_id_b4d2bb9c_fk_dcim_device_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_device_id_b4d2bb9c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_device_id_b4d2bb9c_fk_dcim_device_id;
       public          netbox    false    3763    234    351            ?           2606    22869 P   ipam_service_ipaddresses ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad FOREIGN KEY (ipaddress_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad;
       public          netbox    false    353    4136    341            ?           2606    22874 X   ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id FOREIGN KEY (service_id) REFERENCES public.ipam_service(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id;
       public          netbox    false    351    353    4170            ?           2606    22879 B   ipam_service ipam_service_virtual_machine_id_e8b53562_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_virtual_machine_id_e8b53562_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_virtual_machine_id_e8b53562_fk_virtualiz;
       public          netbox    false    351    399    4331            ?           2606    22884 :   ipam_vlan ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id FOREIGN KEY (group_id) REFERENCES public.ipam_vlangroup(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id;
       public          netbox    false    357    355    4189            ?           2606    22889 4   ipam_vlan ipam_vlan_role_id_f5015962_fk_ipam_role_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_role_id_f5015962_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_role_id_f5015962_fk_ipam_role_id;
       public          netbox    false    347    4158    355            ?           2606    22894 4   ipam_vlan ipam_vlan_site_id_a59334e3_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_site_id_a59334e3_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_site_id_a59334e3_fk_dcim_site_id;
       public          netbox    false    3981    355    286            ?           2606    22899 ;   ipam_vlan ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id;
       public          netbox    false    4258    377    355            ?           2606    22904 >   ipam_vlangroup ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id;
       public          netbox    false    3981    357    286            ?           2606    22909 Q   ipam_vrf_export_targets ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout;
       public          netbox    false    349    360    4166            ?           2606    22914 N   ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id;
       public          netbox    false    4198    359    360            ?           2606    22919 Q   ipam_vrf_import_targets ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout;
       public          netbox    false    363    4166    349            ?           2606    22924 N   ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id;
       public          netbox    false    359    4198    363            ?           2606    22929 9   ipam_vrf ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id;
       public          netbox    false    377    359    4258            ?           2606    22934 H   secrets_secret secrets_secret_assigned_object_type_285b92a4_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_assigned_object_type_285b92a4_fk_django_co FOREIGN KEY (assigned_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_assigned_object_type_285b92a4_fk_django_co;
       public          netbox    false    365    3998    292            ?           2606    22939 G   secrets_secret secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id FOREIGN KEY (role_id) REFERENCES public.secrets_secretrole(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id;
       public          netbox    false    365    4225    367            ?           2606    22944 O   secrets_sessionkey secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id FOREIGN KEY (userkey_id) REFERENCES public.secrets_userkey(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id;
       public          netbox    false    4234    371    369            ?           2606    22949 @   secrets_userkey secrets_userkey_user_id_13ada46b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_user_id_13ada46b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_user_id_13ada46b_fk_auth_user_id;
       public          netbox    false    371    3666    208            ?           2606    22954 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public          netbox    false    3998    375    292            ?           2606    22959 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public          netbox    false    373    375    4241            ?           2606    22964 I   tenancy_tenant tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id FOREIGN KEY (group_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id;
       public          netbox    false    379    4267    377            ?           2606    22969 G   tenancy_tenantgroup tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t FOREIGN KEY (parent_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t;
       public          netbox    false    4267    379    379            ?           2606    22974 ]   users_objectpermission_object_types users_objectpermissi_contenttype_id_594b1cc7_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_contenttype_id_594b1cc7_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermissi_contenttype_id_594b1cc7_fk_django_co;
       public          netbox    false    3998    292    385            ?           2606    22979 Q   users_objectpermission_groups users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou;
       public          netbox    false    3653    382    202            ?           2606    22984 \   users_objectpermission_groups users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj;
       public          netbox    false    382    381    4273            ?           2606    22989 b   users_objectpermission_object_types users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj;
       public          netbox    false    381    385    4273            ?           2606    22994 [   users_objectpermission_users users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj;
       public          netbox    false    381    387    4273            ?           2606    22999 Z   users_objectpermission_users users_objectpermission_users_user_id_16c0905d_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_user_id_16c0905d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_users_user_id_16c0905d_fk_auth_user_id;
       public          netbox    false    208    387    3666            ?           2606    23004 8   users_token users_token_user_id_af964690_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_user_id_af964690_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_user_id_af964690_fk_auth_user_id;
       public          netbox    false    3666    389    208            ?           2606    23009 B   users_userconfig users_userconfig_user_id_afd44184_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_user_id_afd44184_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_user_id_afd44184_fk_auth_user_id;
       public          netbox    false    3666    391    208            ?           2606    23014 J   virtualization_cluster virtualization_clust_group_id_de379828_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_group_id_de379828_fk_virtualiz FOREIGN KEY (group_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_clust_group_id_de379828_fk_virtualiz;
       public          netbox    false    395    4315    393            ?           2606    23019 I   virtualization_cluster virtualization_clust_type_id_4efafb0a_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_type_id_4efafb0a_fk_virtualiz FOREIGN KEY (type_id) REFERENCES public.virtualization_clustertype(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_clust_type_id_4efafb0a_fk_virtualiz;
       public          netbox    false    4323    397    393            ?           2606    23024 N   virtualization_cluster virtualization_cluster_site_id_4d5af282_fk_dcim_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_site_id_4d5af282_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_site_id_4d5af282_fk_dcim_site_id;
       public          netbox    false    3981    393    286            ?           2606    23029 U   virtualization_cluster virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id;
       public          netbox    false    393    4258    377            ?           2606    23034 S   virtualization_virtualmachine virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz;
       public          netbox    false    4307    393    399            ?           2606    23039 T   virtualization_virtualmachine virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat;
       public          netbox    false    258    399    3871            ?           2606    23044 W   virtualization_virtualmachine virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad;
       public          netbox    false    341    4136    399            ?           2606    23049 W   virtualization_virtualmachine virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad;
       public          netbox    false    4136    341    399            ?           2606    23054 P   virtualization_virtualmachine virtualization_virtu_role_id_0cc898f9_fk_dcim_devi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_role_id_0cc898f9_fk_dcim_devi FOREIGN KEY (role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_role_id_0cc898f9_fk_dcim_devi;
       public          netbox    false    399    240    3795            ?           2606    23059 R   virtualization_virtualmachine virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t;
       public          netbox    false    377    399    4258            ?           2606    23064 V   virtualization_vminterface virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan;
       public          netbox    false    355    401    4184            ?           2606    23069 X   virtualization_vminterface virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz;
       public          netbox    false    4331    399    401            ?           2606    23074 Z   virtualization_vminterface_tagged_vlans virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan;
       public          netbox    false    355    4184    403            ?           2606    23079 a   virtualization_vminterface_tagged_vlans virtualization_vmint_vminterface_id_904b12de_fk_virtualiz    FK CONSTRAINT     ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vminterface_id_904b12de_fk_virtualiz FOREIGN KEY (vminterface_id) REFERENCES public.virtualization_vminterface(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vmint_vminterface_id_904b12de_fk_virtualiz;
       public          netbox    false    4342    403    401            ;      x?????? ? ?      =      x?????? ? ?      ?     x????n?8?????,??r1?.X,?\-?p'J?Ӊ?N???K??X?P??U???اhY?????x?;><?=_????m????
???n#s??x~??6'?H>???-#???>????sk?SCr?://???t9W??yK=?A&?!?zdXM?w??F? ?ӧ???Z5c4/?f??ޔi?WbԒ2??IDt??]r?v????????uӣ?VB??5 ???o????wJ?~9??/xw?x??f]h??T7{4??j????#
ڝ[??h??&9????i??[???k?(?S????Tt?????S"Z???-Mx?T'?????????Z{?7Ǿ~???pw??/U"??д???.3???Ix?yBܽ%?%??Մ????-?o?[~?8????h?d3?8? ?l?y ??+c?ܕ̿0C?Z?~ݾ`/??Q???$`?Q??6????lx].劉???l	v]???ق?H?$m?M$?r??&j؎?????5?&]????8?$͆?Sq?I??;????'-??<??z?<?!?,???%umZ[?a?-????|???????|K*Ҷ?:?]??_^???0??ܿu?C?Y$?F??0|}?6F???+???]=m??????x??tȠ?{bA?Q?8?b??n.K1V6)??X?9???E??Y???\??A?ٸ???:>?a???????a~?݇zD???GZ?ѐ????)??(Xu???8dn??`?j'?????nk+??M?f?/?dR?67?`p+h?;?ml??&6??ƒc???c?ɱ??Ʊ??XP_N??\??w??/]??>rjP?tDզ?{?k?E???C???????-z&e???]1
????/?ER?Ѕ?}/??[軽-??褴ƶzO???+(+s?F?
?М?!0?ٺ??xY^?N
?????Y]?H?Q$?.K$?'rR?%?3???#,???[??JǵIZ??f?M?)73??"ə?b٩??'S????l:?????ۈ??EF???1}B?ە????y??7??c??|?k??*??)?m?R#Q???+??
N!??3?8???6??S9??q?|_???)H=ߗ?????TZ?_7|?d??"?ᆨUE ??v??#z??ɇ]??G???C??ipg???MF??\??֡??s???d?~;????;???* g6??٤U???G?a9G??(?&BS>1M??АP?Be"d^?? ??=?????ԍ6????u#????݈9R?rFI???t?%f?mR+?0????Xba*+?%["?DV.˺%?H?IA?s??4??dh???l̔)???t?<K??)?R??U (S?? ?lu??*?'_?5C??}?Ϸ??!??}??????Ʀ?
?\??^Veo?J?.????5Z??³????ގϫ???t?z?#?Y[??ҹ Ҁ6:???NC?? ???F????\?7?$sc?	|F??0?.??aH^B?]??S_???=???_?h?(@>??!y??R|$?HA?}??х*4??di`???f?lJocGJp 5??l]Bx????d??????+?A?, ???HJ?Nȏ_?????z?? ?;TS?ϻ??2??X?9 S ?Xc??8?U?x??6?/1????|?J4?J??+?^w+??????s?Opg???p?`??P?p?x?wP~s?h?YPv?_;??oU???|m?~??'{?????8	?ƃ&f}6(?Yx|z
;p?ʲ????Q??^?,#X?"YEht??gѯ????*?Z???^?!p?N?Z% 4??V 	Ƭ??@B?-???g5h?ū?????)ƹ????N1L???:E<???????ZNK????^[D#@???-???nYc'?Gk?=H?#?5?X?}? ??(b_?"-?? ??g???????A6????9t?ܶ~???m??S??<6@*'??????T?lo??c??	?????9??}y`Zj?|u?<P?z?>?i?n??Fa0?n?q??????4DF?,]?Q?g$äo~?ˀ?l*??a ?Z ӻ??L_?0g?[|eby?oհ??ڤ)?٤f<MnTds?i????)ϼN}?=??\???Ks?ZZ>)?4???r???`6:H??*???@e?v?]^?O??C5ʮ m?)?\fe??????+SخK
,?2^v^?=3O/?u_?ݎ??^??c5?n۽?n?,?$?=n???-)m??(!{K:??6*????o???j?=G/B???? e2?j?A?d??C?<?/_???o??ec?Fi4??F?V3e?F??Y?#E ??Y???I^??~?ޞ??Vm|?H???C|R?O?3???'???4?H??n?8??u????1??lޮ??(@?z?8??u}???q?߯k?O_?G0???o؍#?s??W??q??]?o??B?|:??>?·??/?{Ӳ??PX???EO?q??K???D?~9??? ??\??
$ƶv???@?lcW?"?m?<???
-??ͩ6?o0&?1(??,?N?3???@τ?._?3ܷ??[6??"???`T?!M9´zD??hIϞ?|???c?i??^?-%8??5?(WK??b?"i??H?9???[rW0?[k	&?[??'?ʏ??D?ce=3?w?????Ԧ???e`(9S?NR~ ?6?'?E?Nm????w??,??mpS?K?g????{?F??{?|>?be??Q??;Kbl-7?????n?2	??ېC?Ho??|???8Y4E???
rk?6??<7?3?v?>??I???"tS:%*D9? 3?$NBď?-?Y'?o??8/??~?V???????)) ???r?$?\RQ??%IJ?$??????l?Ǉ???w|@?0;xC??)?v??$?Q?????ƹ?n.??IǇ?5??|4W?)??\)?????? ?wP??u|??
??I??n$???Dx
G??I U?s??B?{}?\.???SV?%??6?fK l?I???)w?+þE:O???l?4??_װk???
??fE|-t?a?'|ޑ??*?R?? T?o?????>9~	?קs?{|r??AQ|r"~r????c???c???
??N=?;??轿?K?]v??A4?n m։?`?0???[]????q?      A   ?   x?-???0????Wt?&??ל???Bt?"ufoˉ???g<?=<|r?ݜ??\R?LPJ?????3Q?:?f?????k?F?a?n???*??N???r???r??lQ?(?H*?)E-J??>?uZ??u???????Y ??i?" ?J?A?#? vm.?      B      x?????? ? ?      E      x?????? ? ?      G      x?????? ? ?      I      x?????? ? ?      K      x?????? ? ?      M      x?????? ? ?      O      x?????? ? ?      Q      x?????? ? ?      S      x?????? ? ?      U      x?????? ? ?      W      x?????? ? ?      Y      x?????? ? ?      [      x?????? ? ?      ]      x?????? ? ?      _      x?????? ? ?      a      x?????? ? ?      c      x?????? ? ?      e      x?????? ? ?      g      x?????? ? ?      i      x?????? ? ?      k      x?????? ? ?      m      x?????? ? ?      o      x?????? ? ?      p      x?????? ? ?      s      x?????? ? ?      u      x?????? ? ?      w      x?????? ? ?      y      x?????? ? ?      {      x?????? ? ?      }      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?uT۶? }&3? ???y???S????? Zm??"f'??BI???4?x;?ɺ ???-?%E???]~ ?@dH??\'i?kf????Q?5P?E?0?A?K Y???9???5!ţ??8%s?2??j?2???I?F?dͺU?F???b2?^??@?s??)??}̊?걪	h??? ZGb^?I?? ?L?J???D??{???^?:???X?I[???O?.?Ŝ??h"???B????Eu$ȡ???????>?kSFifT??aJ??4???`??{x?]?N???
??3?Z???????|@Q?!????*U?O ?????m??$????n?#5??????\%???o?????[?????H????`??
?L?$G???IF'????-?AЌLNu??e?i?X?#?ga?!V?u ?]??UF"U?]?z?3???.8ooQ?_?,O???}?c???BI7T??W2?\G?????U???7(??????????[??>??;:_aY????kN?6??@?8=??gI?????C???,4N??P?7$?[?'W?M=?*?ia$??)?4?|?C???&Te??u؛2PU??? ??K[o?v>bi?է?tvaM?Wt3 A????Q???:퓚l?,??tm?? ?wG0      ?      x??\ے?6?}.žo????e#,??m?LI????=?A?
????۞<?̓H?l???p?\~????Bv?a????E	??#?T???O?6???
??z鯗?%?5:z??/??~<<?*JoI?,"??????w7??????Ǯ{kcX}$?`?r]????C???????㸅?X΄???7u?y5?_t?o?C??P?iIH??Ou??2L?i????L+"?n???v????R?¸??P?t?????aߏ??(??%S??_?r??K[;A???iIQ0l????????]w?30?,(???:NE?I?)m?+??b?>/??ߍo??8????t???p>?+??t?b?\hj瑚??&?Y??????(??dB??PRd???x==?t?|j????z????4??,????????b?Rջz?g?e??M??????ߏ=E?±P??T??p????bM?JK???D????a?߆n7b?????k\?drJ??m???E??6??d?J????	?eT??."????ٖ??i;Њ?????.??2e??}??	?T'6?]:l??Y?a}#:?W???E`?"m*i??+abS?9?"G_?퍴?o?<B@(?Hf?B?vIio?'<>L}????࿮?????T,(~F?O?+?6B?9?hQ?C?]?SS>?^,-vgXg???x????;_O??ti@?*?R??????Ç???톢??pYs?q#??????]???????׺8q??v:Y?6Eܰx?}??n?h??e[@n?CYX?i??????"?ҭ??]?#i??5V?q_?=Nqx?F??&,??UV?d?:?0?l@????0?ŝ?7?x??y???V!?R?dF??0?E?ǰ;a??????߅?D#????qJ_?d֟*mi/?L??,&)??%*u?'??????]?????A?????_?)?8? ?ix??J?[ ???{`???;???6????G)?#-?v?????A?6gS<?????1~??,\??ku?).S?n|??X??p?}\???h?L???)?????k??1?L|??U?PB&?r??????h?q??(e?????? A;?y???I%f[8oɧ?l?D?4?X??i?????_?Hۿ???k???R??h&1?s?4}?6?)?2?????g;-???-????~c?{?c?yC8h%|:'[|?4յg??#%@??T???%????j?v??~?<i{??1???-?f??v	Bm??C.^??,??-??,????5^?=Η?[?è9????-??k?=??H^Zˁ?21&?s???_?|?|`?????m"Zo8?]L??+?uc)????T?'=?8BŌ)]!h*?/??? ?0?\???????E ??????nxVZ.?*?V?qb???S?j???$??)C?7`???O??>-*??vM???a?,\??F8>V??U>?_\?V????v?3?V3(?????/v?u?ruf???m???M?6Q?r?(??Ej???8?"8???	?>N?q???(0V????ԳavïS???z8F??]?b???~?'????m?7???*+????????9?/?B?4$;*F?"???x??u?bJ??+q????	V9??Q?ш[??F???1??MHd???|1R#aa?~?O????a???k??T?ը?&?wR??n?&?T?O)??b?F/?|:??VY|K?n??R:??^>??r/?/?<??_?Y?)?mrWA70Ԍ??????p?N??s????x!~?????X???*+w\(Pb?W.??img?????qh?????ɱ?]AzU?5^`???A?B:x??@???R??ΩS?Uk???????(+vt;Z?7p?eC?ϙ???E5cg??D?V[??*w܂!????KB߷a??6u]?2k?	??0%????lC?`?aF???M??? ?lJD??????a???:I????{??!??????3??٨(???Tu<??????Y???D&??HD}??]?+ciS?3?hi???_?????r?V?
?ٸ?? 
??c?,ƍ?V???BVOE3????Q?P?8?_?t[?S?°?????N?g6Ń?$???".E??d0?T5?.??;?Eb)??QY%֜?L0?k?RTf?????????Wc??)?\??I"?:???6??????,??5?a?htF??-I?_J9䬻m?5????#7??\??L????~???8?/s?\B?c?ȑx8P?=??~wc#!
d???0H?A?̀???,?0??qUL??M????5?䔰1?????g@W???"l?~a???R?0?????N???,???oKY?J?;/8W??H[8	??|[D?4f>????ȗ&??/A^??'ڜ?f?~??A??;f?id?y9?X???V?N?????Z)?Hr??Xw? -r1Wi??EƯ?Nkp??قT?<K.r??b?1???@	?o???t??d?S/W????G??&??s?wi??8?0?[??N{Φ??xqr1??????	 D|>????????KK?????W??ʙ\iY?gS??L?xvA??`?Nf-??????*?J?fC???Z?Mh>D?Ѫ?+CkQ???Ͼe?nC?kg?*#LP?FN?2?VVm?ʑ'p?N?V?g?EXHׇ ???J?m??P??2?U/??????t#uA???ů?w?0???vR??????(??u#sA???szy8ֺ???8n.mJ8??^?K~ϗq{?{?Virlֱfȧ???m??#
4??m)(uL%S???2?p6ӌ?c?ԚC=?q?@?ҰV??r
?Q^??[?I?7?SE??????G$imD????H??6 i0M@?.r??????Zř??X?????)?r??P??ù9?? R*?!J?\?yM?+????L??*????U?????K-??$.sG?h'?1???{=????S#?????ӊ??Kgae?	??"????&^k?:[?P???Q?)?ۏ??Ą"???wi?P9s:??:?w???F????W?ݳ??%?f?d??y@?y???')?u???ZL??????p?????&L?vv?6?0??dX>??l????X?????e?0??1;?q'k?'"H?s?]"??e\]?l?k?$??????])o>??$???ᦀ\?0ΔQ???M?-??8|?C?6?,??v? ?~ꚉ??=?b?{َ??:>6:O?2g????=3p??,Z?:7??<~??돇^R?r??(?X??~? ??d/n ????t`????4|??
?6?UF????؛?;kI???.????6D???CCri??ҍK|7????F?ÿ'?@?d&???,M?rjϯ??"Jϗii? r??r
??\?)5p?F??s.??c?x?JK??˾?ߚ??9ƻ?XҵP!??5?0?TGYyX?e?^:?C,r?^&<q?|a????'\-ĭB?c?n???|?e???!??9?(X|?WC(:???}#?:kq???	??o???m?M ??$??1?:??ǚnWT????=?8??ړ??b?ܓk?z??5?X?f?? ?G?:?M?[7?h?(??6;?P?ު?w??{?3?:??gQ?ݠ?ĕh??#?$L?yJ??m?hH?_??>?j_??jp??ޚ?M?Ooï&
9(n??Xe?????k?B3?}O?B#"?MŪ???C?LF'?~?[?]\^ӎU?[?A??v?????&1???xϤ??z??????P2Je?3????g??N?n??9???????˥??C?d ?j^E ǖ25?2?>?????ZY
??^????e<??-??µ?? ?pey>@??4??\vo????????C)?????քh??YcU?k??R???;m? Γ??????#**^?_
4^?2Le?:?Oއ?*???4?%?Qbˣ?u3ǈ?)? 3М˪??c??ɉ$??&?De?F???}??}??3???/$?t?d??}????*^?\???jҹ?þ? ??Æj??x?m ?????Q1nz?????????aj?qp   ?&??(?????m
v?cB??|???7???	?u??7??ywm?I-70'?-?o?????%I??y9IMw?L??*kF?2c8 ????=???????[?=>חR?aͥB?+c??????s?IUX?8??8bi??^??U??-"Om???d?.N?a#?~i??P*{ZCp83??V?j??%=D;?Ɣ???|%(zba?:??Ť?_]M^ s????????ުt???eg5?f?t???4??禍Z^?[!?d.?r.??=Cn>??U??`????jyo??ja??H_l~򳼵	?R@?ُ)???Dq?3{???M?O?u?Q?? ?Z??D?ϱNM?r
g???w???????t????}P˔?3(?Ub??b?@???al?
Ȼ ????E?ư?UX??<??Xf4?Q
???74??C?.fmy@??y?ƕ|??J+???)iǃ8.?g[L4?E?l?????qN?b?1Ԏ3M?????<??S???~>`c?7>??K?zC?<'N?<ÑBt???2?+)?j-??l?9?S???????K?$???}`y{#??.???^?Vm??gl?UP????yfh)?B?Y?`P.0MT????+-??a??SMNeUy}#??+y@????$PIϲه??7??C?|ﯻW??H?g?Z^?H?r?{???84????|?IϞ?H?̃ d?????????ٌ>????H/??*Oo?_?C??5??M?L???)e˳ܷ?sdجz[????T??0?ne?yh\?b?R?"??G???????
?ST?ȳ??9?????????2??,????H?ׅ	?#rfbd?!&:?O??г???<6?q???%M1F?o?B??1O??a??\?F?L???j??`??$U^?H?k?%?D+}???$????!???ԡ??????Di!??X???د?3?҄??n?Ls1?M??CLyٷ%?R?N?Ε`=??m???M0?(?M?????!?C?t??M??3?%i@?k??|SnO???p??殾?mQ?u?|%h2?^???v?h??{?:]??WZ?9?K}?|????n?K??&J8?3?,6???D??_x?FN??pa??26ײ?o??Nڤ&? (3S?g???6QI?%???????O$=+?2?????E|?BI????V????ϙ?U???g?M??nq?Z>r\+?? 9??E???B0U-Қ?x?gG???!d??"?????u?P?
f??~??6?`C????E????J??x??w??Ͽ????1?̢?????H?\^?֔6.?Y?a??Ue???.??IZ??????8?P??5o;?E0!??Mȿ?q3?oC?9i??????/3?fTEUa=y??F?(g?e??9?6??k?HUj7:??hyrP??C?t??? w??r.F?˥????Q?M?B!???"?{ƩG,??-?n?4???y'Q?i???????6?;??5???Z???,U#?0Lj-?E???S?- {?????0????????Vv??b5R?9???co?[?S?o?m	!?`xbJ???燿s?ަY???????(??H?y? r?N˼?^F??R?OS?m^?S?????N??Y??DY>???Ղ????N????Ȏ??å?>??\D8?y?e???Ҕ:?!?R襷c?2???MԸ?????Ӵ(?q??+??s?cH?>??ض???@1?[?t??Ͷ?Ͱ˵P-?K7??J?r????G?z??y?J???l@??0????????+?bF??Ѵl<???_)?8p???????C?(?      ?   ?  x?E?ێ?H ???????????(?mD?$D?8?????6??I?'???939bJ D,??vf|ܶr7q???"?t*,}?
?Q?
??~?l???J$jO#?@??`??(ӕ?y[;Xs+N?f ????2?l?=)H??|??0??:?!U??????X?Ϣ??T	'Q&???i_??&nZo?{???I\???z3$}s??4?@???J(V?4??<5?b˖\ ˗?y/-̬$??d¬??t]?kN1.G??;ѯO`??_@??~??9?D??_PF???????P?l??a!?cY??Gq[㜍??(????{??'5e?t#;A?H??ݰ*?ی???(??GЇ?r?ӥic/??si??}??.)E,?^?f?z??T?tԦOO!?h??k2???z:R??%?^??i??ɘ?k???n?J?8ۋ.????~?1C???r?˒??J։Gƈ?*-??𰚚?Q/??%J????_(???K .y?%C???[??>??,??6????J)???|0?????]?H?R??????H?=˽P?嵾??\#?Ƣ?_<%r?;?m85??|??????˸z???u???????7?	QEĩ(?y???+?R}????rG?գ?[?&fַz???R??\sV)???ܤ@(xu?׶??B?/aBi?'????m?d?a߬En?}k???4ì|???
J?@Z?h!?%aŷԟ???? 9?$Y      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?e?=k?0????Z[?,Y???v?bO?dI.[?J?{"C?!p??????B0D&AU+U??7/??????-1??3??d??KVI>0T?(3?,
n6@?Nо7-???΁ք&??????;q{L??iݒ0N???H?I?7Kv???8????ِ???G?d?x?^??y???????R???uy?e7?A      ?   J   x?3?q?,I-.??L62O2???V "G???????????%S????????D??????T???+F??? ?j      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?3?4202?54?5?T0??20?2??3??4???60????t?p?sw??u?,??4?????? /
?      ?      x?3䬮?4?????? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?             x?????? ? ?            x?????? ? ?            x?????? ? ?     