PGDMP                          {            netbox    12.11    12.11 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16384    netbox    DATABASE     x   CREATE DATABASE netbox WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE netbox;
                netbox    false                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO netbox;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   netbox    false    3            �            1259    16417 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    netbox    false            �            1259    16415    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          netbox    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          netbox    false    208            �            1259    16427    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    netbox    false            �            1259    16425    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          netbox    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          netbox    false    210            �            1259    16409    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    netbox    false            �            1259    16407    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          netbox    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          netbox    false    206            �            1259    16435 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    netbox    false            �            1259    16445    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    netbox    false            �            1259    16443    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          netbox    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          netbox    false    214            �            1259    16433    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          netbox    false    213                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          netbox    false    212            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    netbox    false            �            1259    16451 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          netbox    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          netbox    false    216            e           1259    18820    circuits_circuit    TABLE       CREATE TABLE public.circuits_circuit (
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
       public         heap    netbox    false            d           1259    18818    circuits_circuit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.circuits_circuit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.circuits_circuit_id_seq;
       public          netbox    false    357                       0    0    circuits_circuit_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.circuits_circuit_id_seq OWNED BY public.circuits_circuit.id;
          public          netbox    false    356            k           1259    18910    circuits_circuittermination    TABLE     �  CREATE TABLE public.circuits_circuittermination (
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
       public         heap    netbox    false            j           1259    18908 "   circuits_circuittermination_id_seq    SEQUENCE     �   CREATE SEQUENCE public.circuits_circuittermination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.circuits_circuittermination_id_seq;
       public          netbox    false    363                       0    0 "   circuits_circuittermination_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.circuits_circuittermination_id_seq OWNED BY public.circuits_circuittermination.id;
          public          netbox    false    362            g           1259    18833    circuits_circuittype    TABLE       CREATE TABLE public.circuits_circuittype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 (   DROP TABLE public.circuits_circuittype;
       public         heap    netbox    false            f           1259    18831    circuits_circuittype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.circuits_circuittype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.circuits_circuittype_id_seq;
       public          netbox    false    359                       0    0    circuits_circuittype_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.circuits_circuittype_id_seq OWNED BY public.circuits_circuittype.id;
          public          netbox    false    358            i           1259    18845    circuits_provider    TABLE     �  CREATE TABLE public.circuits_provider (
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
       public         heap    netbox    false            h           1259    18843    circuits_provider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.circuits_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.circuits_provider_id_seq;
       public          netbox    false    361                       0    0    circuits_provider_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.circuits_provider_id_seq OWNED BY public.circuits_provider.id;
          public          netbox    false    360            m           1259    18941 
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
       public         heap    netbox    false            l           1259    18939    dcim_cable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_cable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dcim_cable_id_seq;
       public          netbox    false    365                       0    0    dcim_cable_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dcim_cable_id_seq OWNED BY public.dcim_cable.id;
          public          netbox    false    364                       1259    20120    dcim_cablepath    TABLE     �  CREATE TABLE public.dcim_cablepath (
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
       public         heap    netbox    false            ~           1259    20118    dcim_cablepath_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_cablepath_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_cablepath_id_seq;
       public          netbox    false    383                       0    0    dcim_cablepath_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_cablepath_id_seq OWNED BY public.dcim_cablepath.id;
          public          netbox    false    382            �            1259    16588    dcim_consoleport    TABLE     �  CREATE TABLE public.dcim_consoleport (
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
       public         heap    netbox    false            �            1259    16586    dcim_consoleport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_consoleport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dcim_consoleport_id_seq;
       public          netbox    false    225                       0    0    dcim_consoleport_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dcim_consoleport_id_seq OWNED BY public.dcim_consoleport.id;
          public          netbox    false    224            �            1259    16596    dcim_consoleporttemplate    TABLE     G  CREATE TABLE public.dcim_consoleporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 ,   DROP TABLE public.dcim_consoleporttemplate;
       public         heap    netbox    false            �            1259    16594    dcim_consoleporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_consoleporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dcim_consoleporttemplate_id_seq;
       public          netbox    false    227                       0    0    dcim_consoleporttemplate_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dcim_consoleporttemplate_id_seq OWNED BY public.dcim_consoleporttemplate.id;
          public          netbox    false    226            �            1259    16604    dcim_consoleserverport    TABLE       CREATE TABLE public.dcim_consoleserverport (
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
       public         heap    netbox    false            �            1259    16602    dcim_consoleserverport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_consoleserverport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_consoleserverport_id_seq;
       public          netbox    false    229                       0    0    dcim_consoleserverport_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_consoleserverport_id_seq OWNED BY public.dcim_consoleserverport.id;
          public          netbox    false    228            �            1259    16612    dcim_consoleserverporttemplate    TABLE     M  CREATE TABLE public.dcim_consoleserverporttemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    type character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 2   DROP TABLE public.dcim_consoleserverporttemplate;
       public         heap    netbox    false            �            1259    16610 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_consoleserverporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.dcim_consoleserverporttemplate_id_seq;
       public          netbox    false    231                       0    0 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.dcim_consoleserverporttemplate_id_seq OWNED BY public.dcim_consoleserverporttemplate.id;
          public          netbox    false    230            �            1259    16620    dcim_device    TABLE       CREATE TABLE public.dcim_device (
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
       public         heap    netbox    false            �            1259    16618    dcim_device_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_device_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_device_id_seq;
       public          netbox    false    233                       0    0    dcim_device_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dcim_device_id_seq OWNED BY public.dcim_device.id;
          public          netbox    false    232                       1259    17135    dcim_devicebay    TABLE     0  CREATE TABLE public.dcim_devicebay (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_id integer NOT NULL,
    installed_device_id integer,
    description character varying(200) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL
);
 "   DROP TABLE public.dcim_devicebay;
       public         heap    netbox    false                       1259    17133    dcim_devicebay_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_devicebay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_devicebay_id_seq;
       public          netbox    false    277                       0    0    dcim_devicebay_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_devicebay_id_seq OWNED BY public.dcim_devicebay.id;
          public          netbox    false    276                       1259    17145    dcim_devicebaytemplate    TABLE       CREATE TABLE public.dcim_devicebaytemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    device_type_id integer NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL
);
 *   DROP TABLE public.dcim_devicebaytemplate;
       public         heap    netbox    false                       1259    17143    dcim_devicebaytemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_devicebaytemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_devicebaytemplate_id_seq;
       public          netbox    false    279                       0    0    dcim_devicebaytemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_devicebaytemplate_id_seq OWNED BY public.dcim_devicebaytemplate.id;
          public          netbox    false    278            �            1259    16635    dcim_devicerole    TABLE     J  CREATE TABLE public.dcim_devicerole (
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
       public         heap    netbox    false            �            1259    16633    dcim_devicerole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_devicerole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_devicerole_id_seq;
       public          netbox    false    235                        0    0    dcim_devicerole_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_devicerole_id_seq OWNED BY public.dcim_devicerole.id;
          public          netbox    false    234            �            1259    16647    dcim_devicetype    TABLE     �  CREATE TABLE public.dcim_devicetype (
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
       public         heap    netbox    false            �            1259    16645    dcim_devicetype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_devicetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_devicetype_id_seq;
       public          netbox    false    237            !           0    0    dcim_devicetype_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_devicetype_id_seq OWNED BY public.dcim_devicetype.id;
          public          netbox    false    236            ]           1259    18712    dcim_frontport    TABLE     �  CREATE TABLE public.dcim_frontport (
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
       public         heap    netbox    false            \           1259    18710    dcim_frontport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_frontport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_frontport_id_seq;
       public          netbox    false    349            "           0    0    dcim_frontport_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_frontport_id_seq OWNED BY public.dcim_frontport.id;
          public          netbox    false    348            _           1259    18722    dcim_frontporttemplate    TABLE     �  CREATE TABLE public.dcim_frontporttemplate (
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
       public         heap    netbox    false            ^           1259    18720    dcim_frontporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_frontporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_frontporttemplate_id_seq;
       public          netbox    false    351            #           0    0    dcim_frontporttemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_frontporttemplate_id_seq OWNED BY public.dcim_frontporttemplate.id;
          public          netbox    false    350            �            1259    16656    dcim_interface    TABLE     �  CREATE TABLE public.dcim_interface (
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
       public         heap    netbox    false            �            1259    16654    dcim_interface_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_interface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_interface_id_seq;
       public          netbox    false    239            $           0    0    dcim_interface_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_interface_id_seq OWNED BY public.dcim_interface.id;
          public          netbox    false    238            ?           1259    18157    dcim_interface_tagged_vlans    TABLE     �   CREATE TABLE public.dcim_interface_tagged_vlans (
    id integer NOT NULL,
    interface_id integer NOT NULL,
    vlan_id integer NOT NULL
);
 /   DROP TABLE public.dcim_interface_tagged_vlans;
       public         heap    netbox    false            >           1259    18155 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_interface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.dcim_interface_tagged_vlans_id_seq;
       public          netbox    false    319            %           0    0 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.dcim_interface_tagged_vlans_id_seq OWNED BY public.dcim_interface_tagged_vlans.id;
          public          netbox    false    318            �            1259    16677    dcim_interfacetemplate    TABLE     e  CREATE TABLE public.dcim_interfacetemplate (
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
       public         heap    netbox    false            �            1259    16675    dcim_interfacetemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_interfacetemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_interfacetemplate_id_seq;
       public          netbox    false    241            &           0    0    dcim_interfacetemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_interfacetemplate_id_seq OWNED BY public.dcim_interfacetemplate.id;
          public          netbox    false    240            �            1259    16698    dcim_inventoryitem    TABLE     a  CREATE TABLE public.dcim_inventoryitem (
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
       public         heap    netbox    false            �            1259    16686    dcim_manufacturer    TABLE       CREATE TABLE public.dcim_manufacturer (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 %   DROP TABLE public.dcim_manufacturer;
       public         heap    netbox    false            �            1259    16684    dcim_manufacturer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.dcim_manufacturer_id_seq;
       public          netbox    false    243            '           0    0    dcim_manufacturer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.dcim_manufacturer_id_seq OWNED BY public.dcim_manufacturer.id;
          public          netbox    false    242            �            1259    16696    dcim_module_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_module_id_seq;
       public          netbox    false    245            (           0    0    dcim_module_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.dcim_module_id_seq OWNED BY public.dcim_inventoryitem.id;
          public          netbox    false    244            �            1259    16706    dcim_platform    TABLE     g  CREATE TABLE public.dcim_platform (
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
       public         heap    netbox    false            �            1259    16704    dcim_platform_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_platform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_platform_id_seq;
       public          netbox    false    247            )           0    0    dcim_platform_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_platform_id_seq OWNED BY public.dcim_platform.id;
          public          netbox    false    246            {           1259    19438    dcim_powerfeed    TABLE       CREATE TABLE public.dcim_powerfeed (
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
       public         heap    netbox    false            z           1259    19436    dcim_powerfeed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_powerfeed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_powerfeed_id_seq;
       public          netbox    false    379            *           0    0    dcim_powerfeed_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_powerfeed_id_seq OWNED BY public.dcim_powerfeed.id;
          public          netbox    false    378            �            1259    16718    dcim_poweroutlet    TABLE     ?  CREATE TABLE public.dcim_poweroutlet (
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
       public         heap    netbox    false            �            1259    16716    dcim_poweroutlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_poweroutlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dcim_poweroutlet_id_seq;
       public          netbox    false    249            +           0    0    dcim_poweroutlet_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dcim_poweroutlet_id_seq OWNED BY public.dcim_poweroutlet.id;
          public          netbox    false    248            �            1259    16726    dcim_poweroutlettemplate    TABLE     �  CREATE TABLE public.dcim_poweroutlettemplate (
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
       public         heap    netbox    false            �            1259    16724    dcim_poweroutlettemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_poweroutlettemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dcim_poweroutlettemplate_id_seq;
       public          netbox    false    251            ,           0    0    dcim_poweroutlettemplate_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dcim_poweroutlettemplate_id_seq OWNED BY public.dcim_poweroutlettemplate.id;
          public          netbox    false    250            }           1259    19457    dcim_powerpanel    TABLE       CREATE TABLE public.dcim_powerpanel (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    rack_group_id integer,
    site_id integer NOT NULL,
    custom_field_data jsonb NOT NULL
);
 #   DROP TABLE public.dcim_powerpanel;
       public         heap    netbox    false            |           1259    19455    dcim_powerpanel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_powerpanel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dcim_powerpanel_id_seq;
       public          netbox    false    381            -           0    0    dcim_powerpanel_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dcim_powerpanel_id_seq OWNED BY public.dcim_powerpanel.id;
          public          netbox    false    380            �            1259    16734    dcim_powerport    TABLE     �  CREATE TABLE public.dcim_powerport (
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
       public         heap    netbox    false            �            1259    16732    dcim_powerport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_powerport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_powerport_id_seq;
       public          netbox    false    253            .           0    0    dcim_powerport_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_powerport_id_seq OWNED BY public.dcim_powerport.id;
          public          netbox    false    252            �            1259    16744    dcim_powerporttemplate    TABLE     -  CREATE TABLE public.dcim_powerporttemplate (
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
       public         heap    netbox    false            �            1259    16742    dcim_powerporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_powerporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.dcim_powerporttemplate_id_seq;
       public          netbox    false    255            /           0    0    dcim_powerporttemplate_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.dcim_powerporttemplate_id_seq OWNED BY public.dcim_powerporttemplate.id;
          public          netbox    false    254                       1259    16752 	   dcim_rack    TABLE       CREATE TABLE public.dcim_rack (
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
       public         heap    netbox    false                        1259    16750    dcim_rack_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dcim_rack_id_seq;
       public          netbox    false    257            0           0    0    dcim_rack_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dcim_rack_id_seq OWNED BY public.dcim_rack.id;
          public          netbox    false    256                       1259    16764    dcim_rackgroup    TABLE     �  CREATE TABLE public.dcim_rackgroup (
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
       public         heap    netbox    false                       1259    16762    dcim_rackgroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rackgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dcim_rackgroup_id_seq;
       public          netbox    false    259            1           0    0    dcim_rackgroup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dcim_rackgroup_id_seq OWNED BY public.dcim_rackgroup.id;
          public          netbox    false    258            !           1259    17448    dcim_rackreservation    TABLE     L  CREATE TABLE public.dcim_rackreservation (
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
       public         heap    netbox    false                        1259    17446    dcim_rackreservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rackreservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.dcim_rackreservation_id_seq;
       public          netbox    false    289            2           0    0    dcim_rackreservation_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.dcim_rackreservation_id_seq OWNED BY public.dcim_rackreservation.id;
          public          netbox    false    288                       1259    17297    dcim_rackrole    TABLE     *  CREATE TABLE public.dcim_rackrole (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 !   DROP TABLE public.dcim_rackrole;
       public         heap    netbox    false                       1259    17295    dcim_rackrole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rackrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_rackrole_id_seq;
       public          netbox    false    283            3           0    0    dcim_rackrole_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_rackrole_id_seq OWNED BY public.dcim_rackrole.id;
          public          netbox    false    282            a           1259    18732    dcim_rearport    TABLE     C  CREATE TABLE public.dcim_rearport (
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
       public         heap    netbox    false            `           1259    18730    dcim_rearport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rearport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dcim_rearport_id_seq;
       public          netbox    false    353            4           0    0    dcim_rearport_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dcim_rearport_id_seq OWNED BY public.dcim_rearport.id;
          public          netbox    false    352            c           1259    18742    dcim_rearporttemplate    TABLE     �  CREATE TABLE public.dcim_rearporttemplate (
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
       public         heap    netbox    false            b           1259    18740    dcim_rearporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_rearporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dcim_rearporttemplate_id_seq;
       public          netbox    false    355            5           0    0    dcim_rearporttemplate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dcim_rearporttemplate_id_seq OWNED BY public.dcim_rearporttemplate.id;
          public          netbox    false    354            #           1259    17493    dcim_region    TABLE     w  CREATE TABLE public.dcim_region (
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
       public         heap    netbox    false            "           1259    17491    dcim_region_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dcim_region_id_seq;
       public          netbox    false    291            6           0    0    dcim_region_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dcim_region_id_seq OWNED BY public.dcim_region.id;
          public          netbox    false    290                       1259    16772 	   dcim_site    TABLE     g  CREATE TABLE public.dcim_site (
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
       public         heap    netbox    false                       1259    16770    dcim_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dcim_site_id_seq;
       public          netbox    false    261            7           0    0    dcim_site_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dcim_site_id_seq OWNED BY public.dcim_site.id;
          public          netbox    false    260            A           1259    18191    dcim_virtualchassis    TABLE       CREATE TABLE public.dcim_virtualchassis (
    id integer NOT NULL,
    domain character varying(30) NOT NULL,
    master_id integer,
    created date,
    last_updated timestamp with time zone,
    name character varying(64) NOT NULL,
    custom_field_data jsonb NOT NULL
);
 '   DROP TABLE public.dcim_virtualchassis;
       public         heap    netbox    false            @           1259    18189    dcim_virtualchassis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcim_virtualchassis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dcim_virtualchassis_id_seq;
       public          netbox    false    321            8           0    0    dcim_virtualchassis_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dcim_virtualchassis_id_seq OWNED BY public.dcim_virtualchassis.id;
          public          netbox    false    320            �            1259    16513    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    netbox    false            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          netbox    false    219            9           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          netbox    false    218            �            1259    16399    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    netbox    false            �            1259    16397    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          netbox    false    205            :           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          netbox    false    204            �            1259    16388    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    netbox    false            �            1259    16386    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          netbox    false    203            ;           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          netbox    false    202            �           1259    20594    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    netbox    false            C           1259    18275    extras_configcontext    TABLE     }  CREATE TABLE public.extras_configcontext (
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
       public         heap    netbox    false            s           1259    19273 #   extras_configcontext_cluster_groups    TABLE     �   CREATE TABLE public.extras_configcontext_cluster_groups (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    clustergroup_id integer NOT NULL
);
 7   DROP TABLE public.extras_configcontext_cluster_groups;
       public         heap    netbox    false            r           1259    19271 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.extras_configcontext_cluster_groups_id_seq;
       public          netbox    false    371            <           0    0 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.extras_configcontext_cluster_groups_id_seq OWNED BY public.extras_configcontext_cluster_groups.id;
          public          netbox    false    370            u           1259    19281    extras_configcontext_clusters    TABLE     �   CREATE TABLE public.extras_configcontext_clusters (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    cluster_id integer NOT NULL
);
 1   DROP TABLE public.extras_configcontext_clusters;
       public         heap    netbox    false            t           1259    19279 $   extras_configcontext_clusters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.extras_configcontext_clusters_id_seq;
       public          netbox    false    373            =           0    0 $   extras_configcontext_clusters_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.extras_configcontext_clusters_id_seq OWNED BY public.extras_configcontext_clusters.id;
          public          netbox    false    372            B           1259    18273    extras_configcontext_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.extras_configcontext_id_seq;
       public          netbox    false    323            >           0    0    extras_configcontext_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.extras_configcontext_id_seq OWNED BY public.extras_configcontext.id;
          public          netbox    false    322            E           1259    18289    extras_configcontext_platforms    TABLE     �   CREATE TABLE public.extras_configcontext_platforms (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    platform_id integer NOT NULL
);
 2   DROP TABLE public.extras_configcontext_platforms;
       public         heap    netbox    false            D           1259    18287 %   extras_configcontext_platforms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.extras_configcontext_platforms_id_seq;
       public          netbox    false    325            ?           0    0 %   extras_configcontext_platforms_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.extras_configcontext_platforms_id_seq OWNED BY public.extras_configcontext_platforms.id;
          public          netbox    false    324            G           1259    18297    extras_configcontext_regions    TABLE     �   CREATE TABLE public.extras_configcontext_regions (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    region_id integer NOT NULL
);
 0   DROP TABLE public.extras_configcontext_regions;
       public         heap    netbox    false            F           1259    18295 #   extras_configcontext_regions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.extras_configcontext_regions_id_seq;
       public          netbox    false    327            @           0    0 #   extras_configcontext_regions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.extras_configcontext_regions_id_seq OWNED BY public.extras_configcontext_regions.id;
          public          netbox    false    326            I           1259    18305    extras_configcontext_roles    TABLE     �   CREATE TABLE public.extras_configcontext_roles (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    devicerole_id integer NOT NULL
);
 .   DROP TABLE public.extras_configcontext_roles;
       public         heap    netbox    false            H           1259    18303 !   extras_configcontext_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.extras_configcontext_roles_id_seq;
       public          netbox    false    329            A           0    0 !   extras_configcontext_roles_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.extras_configcontext_roles_id_seq OWNED BY public.extras_configcontext_roles.id;
          public          netbox    false    328            K           1259    18313    extras_configcontext_sites    TABLE     �   CREATE TABLE public.extras_configcontext_sites (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    site_id integer NOT NULL
);
 .   DROP TABLE public.extras_configcontext_sites;
       public         heap    netbox    false            J           1259    18311 !   extras_configcontext_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.extras_configcontext_sites_id_seq;
       public          netbox    false    331            B           0    0 !   extras_configcontext_sites_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.extras_configcontext_sites_id_seq OWNED BY public.extras_configcontext_sites.id;
          public          netbox    false    330            q           1259    19216    extras_configcontext_tags    TABLE     �   CREATE TABLE public.extras_configcontext_tags (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tag_id integer NOT NULL
);
 -   DROP TABLE public.extras_configcontext_tags;
       public         heap    netbox    false            p           1259    19214     extras_configcontext_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.extras_configcontext_tags_id_seq;
       public          netbox    false    369            C           0    0     extras_configcontext_tags_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.extras_configcontext_tags_id_seq OWNED BY public.extras_configcontext_tags.id;
          public          netbox    false    368            M           1259    18321 "   extras_configcontext_tenant_groups    TABLE     �   CREATE TABLE public.extras_configcontext_tenant_groups (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tenantgroup_id integer NOT NULL
);
 6   DROP TABLE public.extras_configcontext_tenant_groups;
       public         heap    netbox    false            L           1259    18319 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_tenant_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.extras_configcontext_tenant_groups_id_seq;
       public          netbox    false    333            D           0    0 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.extras_configcontext_tenant_groups_id_seq OWNED BY public.extras_configcontext_tenant_groups.id;
          public          netbox    false    332            O           1259    18329    extras_configcontext_tenants    TABLE     �   CREATE TABLE public.extras_configcontext_tenants (
    id integer NOT NULL,
    configcontext_id integer NOT NULL,
    tenant_id integer NOT NULL
);
 0   DROP TABLE public.extras_configcontext_tenants;
       public         heap    netbox    false            N           1259    18327 #   extras_configcontext_tenants_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_configcontext_tenants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.extras_configcontext_tenants_id_seq;
       public          netbox    false    335            E           0    0 #   extras_configcontext_tenants_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.extras_configcontext_tenants_id_seq OWNED BY public.extras_configcontext_tenants.id;
          public          netbox    false    334            3           1259    17907    extras_customfield    TABLE       CREATE TABLE public.extras_customfield (
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
       public         heap    netbox    false            5           1259    17919     extras_customfield_content_types    TABLE     �   CREATE TABLE public.extras_customfield_content_types (
    id integer NOT NULL,
    customfield_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 4   DROP TABLE public.extras_customfield_content_types;
       public         heap    netbox    false            2           1259    17905    extras_customfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_customfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.extras_customfield_id_seq;
       public          netbox    false    307            F           0    0    extras_customfield_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.extras_customfield_id_seq OWNED BY public.extras_customfield.id;
          public          netbox    false    306            4           1259    17917 "   extras_customfield_obj_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_customfield_obj_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.extras_customfield_obj_type_id_seq;
       public          netbox    false    309            G           0    0 "   extras_customfield_obj_type_id_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public.extras_customfield_obj_type_id_seq OWNED BY public.extras_customfield_content_types.id;
          public          netbox    false    308            o           1259    19108    extras_customlink    TABLE     �  CREATE TABLE public.extras_customlink (
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
       public         heap    netbox    false            n           1259    19106    extras_customlink_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_customlink_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.extras_customlink_id_seq;
       public          netbox    false    367            H           0    0    extras_customlink_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.extras_customlink_id_seq OWNED BY public.extras_customlink.id;
          public          netbox    false    366            1           1259    17827    extras_exporttemplate    TABLE     J  CREATE TABLE public.extras_exporttemplate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    template_code text NOT NULL,
    mime_type character varying(50) NOT NULL,
    file_extension character varying(15) NOT NULL,
    content_type_id integer NOT NULL,
    description character varying(200) NOT NULL
);
 )   DROP TABLE public.extras_exporttemplate;
       public         heap    netbox    false            0           1259    17825    extras_exporttemplate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_exporttemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.extras_exporttemplate_id_seq;
       public          netbox    false    305            I           0    0    extras_exporttemplate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.extras_exporttemplate_id_seq OWNED BY public.extras_exporttemplate.id;
          public          netbox    false    304            7           1259    17994    extras_imageattachment    TABLE     R  CREATE TABLE public.extras_imageattachment (
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
       public         heap    netbox    false            6           1259    17992    extras_imageattachment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_imageattachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.extras_imageattachment_id_seq;
       public          netbox    false    311            J           0    0    extras_imageattachment_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.extras_imageattachment_id_seq OWNED BY public.extras_imageattachment.id;
          public          netbox    false    310            �           1259    20420    extras_jobresult    TABLE     O  CREATE TABLE public.extras_jobresult (
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
       public         heap    netbox    false            �           1259    20418    extras_jobresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_jobresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.extras_jobresult_id_seq;
       public          netbox    false    397            K           0    0    extras_jobresult_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.extras_jobresult_id_seq OWNED BY public.extras_jobresult.id;
          public          netbox    false    396            =           1259    18104    extras_objectchange    TABLE     �  CREATE TABLE public.extras_objectchange (
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
       public         heap    netbox    false            <           1259    18102    extras_objectchange_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_objectchange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.extras_objectchange_id_seq;
       public          netbox    false    317            L           0    0    extras_objectchange_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.extras_objectchange_id_seq OWNED BY public.extras_objectchange.id;
          public          netbox    false    316            Q           1259    18454 
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
       public         heap    netbox    false            P           1259    18452    extras_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.extras_tag_id_seq;
       public          netbox    false    337            M           0    0    extras_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.extras_tag_id_seq OWNED BY public.extras_tag.id;
          public          netbox    false    336            S           1259    18466    extras_taggeditem    TABLE     �   CREATE TABLE public.extras_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.extras_taggeditem;
       public         heap    netbox    false            R           1259    18464    extras_taggeditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.extras_taggeditem_id_seq;
       public          netbox    false    339            N           0    0    extras_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.extras_taggeditem_id_seq OWNED BY public.extras_taggeditem.id;
          public          netbox    false    338            9           1259    18065    extras_webhook    TABLE     J  CREATE TABLE public.extras_webhook (
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
       public         heap    netbox    false            ;           1259    18079    extras_webhook_content_types    TABLE     �   CREATE TABLE public.extras_webhook_content_types (
    id integer NOT NULL,
    webhook_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 0   DROP TABLE public.extras_webhook_content_types;
       public         heap    netbox    false            8           1259    18063    extras_webhook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_webhook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.extras_webhook_id_seq;
       public          netbox    false    313            O           0    0    extras_webhook_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.extras_webhook_id_seq OWNED BY public.extras_webhook.id;
          public          netbox    false    312            :           1259    18077    extras_webhook_obj_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.extras_webhook_obj_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.extras_webhook_obj_type_id_seq;
       public          netbox    false    315            P           0    0    extras_webhook_obj_type_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.extras_webhook_obj_type_id_seq OWNED BY public.extras_webhook_content_types.id;
          public          netbox    false    314                       1259    16906    ipam_aggregate    TABLE     7  CREATE TABLE public.ipam_aggregate (
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
       public         heap    netbox    false                       1259    16904    ipam_aggregate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_aggregate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_aggregate_id_seq;
       public          netbox    false    263            Q           0    0    ipam_aggregate_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_aggregate_id_seq OWNED BY public.ipam_aggregate.id;
          public          netbox    false    262            	           1259    16918    ipam_ipaddress    TABLE     _  CREATE TABLE public.ipam_ipaddress (
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
       public         heap    netbox    false                       1259    16916    ipam_ipaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_ipaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_ipaddress_id_seq;
       public          netbox    false    265            R           0    0    ipam_ipaddress_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_ipaddress_id_seq OWNED BY public.ipam_ipaddress.id;
          public          netbox    false    264                       1259    16932    ipam_prefix    TABLE     �  CREATE TABLE public.ipam_prefix (
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
       public         heap    netbox    false            
           1259    16930    ipam_prefix_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_prefix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ipam_prefix_id_seq;
       public          netbox    false    267            S           0    0    ipam_prefix_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ipam_prefix_id_seq OWNED BY public.ipam_prefix.id;
          public          netbox    false    266                       1259    16945    ipam_rir    TABLE       CREATE TABLE public.ipam_rir (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    is_private boolean NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
    DROP TABLE public.ipam_rir;
       public         heap    netbox    false                       1259    16943    ipam_rir_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_rir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ipam_rir_id_seq;
       public          netbox    false    269            T           0    0    ipam_rir_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ipam_rir_id_seq OWNED BY public.ipam_rir.id;
          public          netbox    false    268                       1259    16957 	   ipam_role    TABLE     X  CREATE TABLE public.ipam_role (
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
       public         heap    netbox    false                       1259    16955    ipam_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ipam_role_id_seq;
       public          netbox    false    271            U           0    0    ipam_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ipam_role_id_seq OWNED BY public.ipam_role.id;
          public          netbox    false    270            �           1259    20488    ipam_routetarget    TABLE       CREATE TABLE public.ipam_routetarget (
    id integer NOT NULL,
    created date,
    last_updated timestamp with time zone,
    custom_field_data jsonb NOT NULL,
    name character varying(21) NOT NULL,
    description character varying(200) NOT NULL,
    tenant_id integer
);
 $   DROP TABLE public.ipam_routetarget;
       public         heap    netbox    false            �           1259    20486    ipam_routetarget_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_routetarget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ipam_routetarget_id_seq;
       public          netbox    false    399            V           0    0    ipam_routetarget_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ipam_routetarget_id_seq OWNED BY public.ipam_routetarget.id;
          public          netbox    false    398                       1259    17337    ipam_service    TABLE     ~  CREATE TABLE public.ipam_service (
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
       public         heap    netbox    false                       1259    17335    ipam_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ipam_service_id_seq;
       public          netbox    false    285            W           0    0    ipam_service_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ipam_service_id_seq OWNED BY public.ipam_service.id;
          public          netbox    false    284                       1259    17347    ipam_service_ipaddresses    TABLE     �   CREATE TABLE public.ipam_service_ipaddresses (
    id integer NOT NULL,
    service_id integer NOT NULL,
    ipaddress_id integer NOT NULL
);
 ,   DROP TABLE public.ipam_service_ipaddresses;
       public         heap    netbox    false                       1259    17345    ipam_service_ipaddresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_service_ipaddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ipam_service_ipaddresses_id_seq;
       public          netbox    false    287            X           0    0    ipam_service_ipaddresses_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ipam_service_ipaddresses_id_seq OWNED BY public.ipam_service_ipaddresses.id;
          public          netbox    false    286                       1259    16970 	   ipam_vlan    TABLE     �  CREATE TABLE public.ipam_vlan (
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
       public         heap    netbox    false                       1259    16968    ipam_vlan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_vlan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ipam_vlan_id_seq;
       public          netbox    false    273            Y           0    0    ipam_vlan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ipam_vlan_id_seq OWNED BY public.ipam_vlan.id;
          public          netbox    false    272                       1259    17204    ipam_vlangroup    TABLE       CREATE TABLE public.ipam_vlangroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    site_id integer,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 "   DROP TABLE public.ipam_vlangroup;
       public         heap    netbox    false                       1259    17202    ipam_vlangroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_vlangroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ipam_vlangroup_id_seq;
       public          netbox    false    281            Z           0    0    ipam_vlangroup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ipam_vlangroup_id_seq OWNED BY public.ipam_vlangroup.id;
          public          netbox    false    280                       1259    16980    ipam_vrf    TABLE     R  CREATE TABLE public.ipam_vrf (
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
       public         heap    netbox    false            �           1259    20501    ipam_vrf_export_targets    TABLE     �   CREATE TABLE public.ipam_vrf_export_targets (
    id integer NOT NULL,
    vrf_id integer NOT NULL,
    routetarget_id integer NOT NULL
);
 +   DROP TABLE public.ipam_vrf_export_targets;
       public         heap    netbox    false            �           1259    20499    ipam_vrf_export_targets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_vrf_export_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ipam_vrf_export_targets_id_seq;
       public          netbox    false    401            [           0    0    ipam_vrf_export_targets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ipam_vrf_export_targets_id_seq OWNED BY public.ipam_vrf_export_targets.id;
          public          netbox    false    400                       1259    16978    ipam_vrf_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_vrf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ipam_vrf_id_seq;
       public          netbox    false    275            \           0    0    ipam_vrf_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ipam_vrf_id_seq OWNED BY public.ipam_vrf.id;
          public          netbox    false    274            �           1259    20509    ipam_vrf_import_targets    TABLE     �   CREATE TABLE public.ipam_vrf_import_targets (
    id integer NOT NULL,
    vrf_id integer NOT NULL,
    routetarget_id integer NOT NULL
);
 +   DROP TABLE public.ipam_vrf_import_targets;
       public         heap    netbox    false            �           1259    20507    ipam_vrf_import_targets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ipam_vrf_import_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ipam_vrf_import_targets_id_seq;
       public          netbox    false    403            ]           0    0    ipam_vrf_import_targets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ipam_vrf_import_targets_id_seq OWNED BY public.ipam_vrf_import_targets.id;
          public          netbox    false    402            U           1259    18576    secrets_secret    TABLE     �  CREATE TABLE public.secrets_secret (
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
       public         heap    netbox    false            T           1259    18574    secrets_secret_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secrets_secret_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.secrets_secret_id_seq;
       public          netbox    false    341            ^           0    0    secrets_secret_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.secrets_secret_id_seq OWNED BY public.secrets_secret.id;
          public          netbox    false    340            W           1259    18587    secrets_secretrole    TABLE       CREATE TABLE public.secrets_secretrole (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 &   DROP TABLE public.secrets_secretrole;
       public         heap    netbox    false            V           1259    18585    secrets_secretrole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secrets_secretrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.secrets_secretrole_id_seq;
       public          netbox    false    343            _           0    0    secrets_secretrole_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.secrets_secretrole_id_seq OWNED BY public.secrets_secretrole.id;
          public          netbox    false    342            [           1259    18677    secrets_sessionkey    TABLE     �   CREATE TABLE public.secrets_sessionkey (
    id integer NOT NULL,
    cipher bytea NOT NULL,
    hash character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    userkey_id integer NOT NULL
);
 &   DROP TABLE public.secrets_sessionkey;
       public         heap    netbox    false            Z           1259    18675    secrets_sessionkey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secrets_sessionkey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.secrets_sessionkey_id_seq;
       public          netbox    false    347            `           0    0    secrets_sessionkey_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.secrets_sessionkey_id_seq OWNED BY public.secrets_sessionkey.id;
          public          netbox    false    346            Y           1259    18615    secrets_userkey    TABLE     �   CREATE TABLE public.secrets_userkey (
    id integer NOT NULL,
    created date NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    public_key text NOT NULL,
    master_key_cipher bytea,
    user_id integer NOT NULL
);
 #   DROP TABLE public.secrets_userkey;
       public         heap    netbox    false            X           1259    18613    secrets_userkey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secrets_userkey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.secrets_userkey_id_seq;
       public          netbox    false    345            a           0    0    secrets_userkey_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.secrets_userkey_id_seq OWNED BY public.secrets_userkey.id;
          public          netbox    false    344            -           1259    17785 
   taggit_tag    TABLE     �   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         heap    netbox    false            ,           1259    17783    taggit_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public          netbox    false    301            b           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
          public          netbox    false    300            /           1259    17797    taggit_taggeditem    TABLE     �   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         heap    netbox    false            .           1259    17795    taggit_taggeditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public          netbox    false    303            c           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
          public          netbox    false    302            �            1259    16546    tenancy_tenant    TABLE     Z  CREATE TABLE public.tenancy_tenant (
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
       public         heap    netbox    false            �            1259    16544    tenancy_tenant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tenancy_tenant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tenancy_tenant_id_seq;
       public          netbox    false    221            d           0    0    tenancy_tenant_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tenancy_tenant_id_seq OWNED BY public.tenancy_tenant.id;
          public          netbox    false    220            �            1259    16561    tenancy_tenantgroup    TABLE     �  CREATE TABLE public.tenancy_tenantgroup (
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
       public         heap    netbox    false            �            1259    16559    tenancy_tenantgroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tenancy_tenantgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tenancy_tenantgroup_id_seq;
       public          netbox    false    223            e           0    0    tenancy_tenantgroup_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tenancy_tenantgroup_id_seq OWNED BY public.tenancy_tenantgroup.id;
          public          netbox    false    222            �           1259    20326    users_objectpermission    TABLE       CREATE TABLE public.users_objectpermission (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    enabled boolean NOT NULL,
    constraints jsonb,
    actions character varying(30)[] NOT NULL
);
 *   DROP TABLE public.users_objectpermission;
       public         heap    netbox    false            �           1259    20345    users_objectpermission_groups    TABLE     �   CREATE TABLE public.users_objectpermission_groups (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    group_id integer NOT NULL
);
 1   DROP TABLE public.users_objectpermission_groups;
       public         heap    netbox    false            �           1259    20343 $   users_objectpermission_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_objectpermission_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.users_objectpermission_groups_id_seq;
       public          netbox    false    393            f           0    0 $   users_objectpermission_groups_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.users_objectpermission_groups_id_seq OWNED BY public.users_objectpermission_groups.id;
          public          netbox    false    392            �           1259    20324    users_objectpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_objectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.users_objectpermission_id_seq;
       public          netbox    false    389            g           0    0    users_objectpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.users_objectpermission_id_seq OWNED BY public.users_objectpermission.id;
          public          netbox    false    388            �           1259    20337 #   users_objectpermission_object_types    TABLE     �   CREATE TABLE public.users_objectpermission_object_types (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    contenttype_id integer NOT NULL
);
 7   DROP TABLE public.users_objectpermission_object_types;
       public         heap    netbox    false            �           1259    20335 *   users_objectpermission_object_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_objectpermission_object_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.users_objectpermission_object_types_id_seq;
       public          netbox    false    391            h           0    0 *   users_objectpermission_object_types_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.users_objectpermission_object_types_id_seq OWNED BY public.users_objectpermission_object_types.id;
          public          netbox    false    390            �           1259    20353    users_objectpermission_users    TABLE     �   CREATE TABLE public.users_objectpermission_users (
    id integer NOT NULL,
    objectpermission_id integer NOT NULL,
    user_id integer NOT NULL
);
 0   DROP TABLE public.users_objectpermission_users;
       public         heap    netbox    false            �           1259    20351 #   users_objectpermission_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_objectpermission_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.users_objectpermission_users_id_seq;
       public          netbox    false    395            i           0    0 #   users_objectpermission_users_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.users_objectpermission_users_id_seq OWNED BY public.users_objectpermission_users.id;
          public          netbox    false    394            �           1259    20291    users_token    TABLE     -  CREATE TABLE public.users_token (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    expires timestamp with time zone,
    key character varying(40) NOT NULL,
    write_enabled boolean NOT NULL,
    description character varying(200) NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.users_token;
       public         heap    netbox    false            �           1259    20289    users_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_token_id_seq;
       public          netbox    false    385            j           0    0    users_token_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_token_id_seq OWNED BY public.users_token.id;
          public          netbox    false    384            �           1259    20308    users_userconfig    TABLE     y   CREATE TABLE public.users_userconfig (
    id integer NOT NULL,
    data jsonb NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.users_userconfig;
       public         heap    netbox    false            �           1259    20306    users_userconfig_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_userconfig_id_seq;
       public          netbox    false    387            k           0    0    users_userconfig_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_userconfig_id_seq OWNED BY public.users_userconfig.id;
          public          netbox    false    386            %           1259    17646    virtualization_cluster    TABLE     Q  CREATE TABLE public.virtualization_cluster (
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
       public         heap    netbox    false            $           1259    17644    virtualization_cluster_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.virtualization_cluster_id_seq;
       public          netbox    false    293            l           0    0    virtualization_cluster_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.virtualization_cluster_id_seq OWNED BY public.virtualization_cluster.id;
          public          netbox    false    292            '           1259    17659    virtualization_clustergroup    TABLE       CREATE TABLE public.virtualization_clustergroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 /   DROP TABLE public.virtualization_clustergroup;
       public         heap    netbox    false            &           1259    17657 "   virtualization_clustergroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_clustergroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.virtualization_clustergroup_id_seq;
       public          netbox    false    295            m           0    0 "   virtualization_clustergroup_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.virtualization_clustergroup_id_seq OWNED BY public.virtualization_clustergroup.id;
          public          netbox    false    294            )           1259    17671    virtualization_clustertype    TABLE       CREATE TABLE public.virtualization_clustertype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created date,
    last_updated timestamp with time zone,
    description character varying(200) NOT NULL
);
 .   DROP TABLE public.virtualization_clustertype;
       public         heap    netbox    false            (           1259    17669 !   virtualization_clustertype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_clustertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.virtualization_clustertype_id_seq;
       public          netbox    false    297            n           0    0 !   virtualization_clustertype_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.virtualization_clustertype_id_seq OWNED BY public.virtualization_clustertype.id;
          public          netbox    false    296            +           1259    17683    virtualization_virtualmachine    TABLE       CREATE TABLE public.virtualization_virtualmachine (
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
       public         heap    netbox    false            *           1259    17681 $   virtualization_virtualmachine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_virtualmachine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.virtualization_virtualmachine_id_seq;
       public          netbox    false    299            o           0    0 $   virtualization_virtualmachine_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.virtualization_virtualmachine_id_seq OWNED BY public.virtualization_virtualmachine.id;
          public          netbox    false    298            w           1259    19376    virtualization_vminterface    TABLE     �  CREATE TABLE public.virtualization_vminterface (
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
       public         heap    netbox    false            v           1259    19374 !   virtualization_vminterface_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_vminterface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.virtualization_vminterface_id_seq;
       public          netbox    false    375            p           0    0 !   virtualization_vminterface_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.virtualization_vminterface_id_seq OWNED BY public.virtualization_vminterface.id;
          public          netbox    false    374            y           1259    19385 '   virtualization_vminterface_tagged_vlans    TABLE     �   CREATE TABLE public.virtualization_vminterface_tagged_vlans (
    id integer NOT NULL,
    vminterface_id integer NOT NULL,
    vlan_id integer NOT NULL
);
 ;   DROP TABLE public.virtualization_vminterface_tagged_vlans;
       public         heap    netbox    false            x           1259    19383 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq;
       public          netbox    false    377            q           0    0 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq OWNED BY public.virtualization_vminterface_tagged_vlans.id;
          public          netbox    false    376            �           2604    16420    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    209    208    209            �           2604    16430    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    210    211    211            �           2604    16412    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    206    207    207            �           2604    16438    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    213    212    213            �           2604    16448    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    215    214    215            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    217    216    217                       2604    18823    circuits_circuit id    DEFAULT     z   ALTER TABLE ONLY public.circuits_circuit ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuit_id_seq'::regclass);
 B   ALTER TABLE public.circuits_circuit ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    357    356    357                       2604    18913    circuits_circuittermination id    DEFAULT     �   ALTER TABLE ONLY public.circuits_circuittermination ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuittermination_id_seq'::regclass);
 M   ALTER TABLE public.circuits_circuittermination ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    363    362    363                       2604    18836    circuits_circuittype id    DEFAULT     �   ALTER TABLE ONLY public.circuits_circuittype ALTER COLUMN id SET DEFAULT nextval('public.circuits_circuittype_id_seq'::regclass);
 F   ALTER TABLE public.circuits_circuittype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    359    358    359                       2604    18848    circuits_provider id    DEFAULT     |   ALTER TABLE ONLY public.circuits_provider ALTER COLUMN id SET DEFAULT nextval('public.circuits_provider_id_seq'::regclass);
 C   ALTER TABLE public.circuits_provider ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    361    360    361            "           2604    18944    dcim_cable id    DEFAULT     n   ALTER TABLE ONLY public.dcim_cable ALTER COLUMN id SET DEFAULT nextval('public.dcim_cable_id_seq'::regclass);
 <   ALTER TABLE public.dcim_cable ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    364    365    365            4           2604    20123    dcim_cablepath id    DEFAULT     v   ALTER TABLE ONLY public.dcim_cablepath ALTER COLUMN id SET DEFAULT nextval('public.dcim_cablepath_id_seq'::regclass);
 @   ALTER TABLE public.dcim_cablepath ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    382    383    383            �           2604    16591    dcim_consoleport id    DEFAULT     z   ALTER TABLE ONLY public.dcim_consoleport ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleport_id_seq'::regclass);
 B   ALTER TABLE public.dcim_consoleport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    225    224    225            �           2604    16599    dcim_consoleporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_consoleporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleporttemplate_id_seq'::regclass);
 J   ALTER TABLE public.dcim_consoleporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    227    226    227            �           2604    16607    dcim_consoleserverport id    DEFAULT     �   ALTER TABLE ONLY public.dcim_consoleserverport ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleserverport_id_seq'::regclass);
 H   ALTER TABLE public.dcim_consoleserverport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    228    229    229            �           2604    16615 !   dcim_consoleserverporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_consoleserverporttemplate_id_seq'::regclass);
 P   ALTER TABLE public.dcim_consoleserverporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    231    230    231            �           2604    16623    dcim_device id    DEFAULT     p   ALTER TABLE ONLY public.dcim_device ALTER COLUMN id SET DEFAULT nextval('public.dcim_device_id_seq'::regclass);
 =   ALTER TABLE public.dcim_device ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    232    233    233            �           2604    17138    dcim_devicebay id    DEFAULT     v   ALTER TABLE ONLY public.dcim_devicebay ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicebay_id_seq'::regclass);
 @   ALTER TABLE public.dcim_devicebay ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    277    276    277            �           2604    17148    dcim_devicebaytemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_devicebaytemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicebaytemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_devicebaytemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    278    279    279            �           2604    16638    dcim_devicerole id    DEFAULT     x   ALTER TABLE ONLY public.dcim_devicerole ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicerole_id_seq'::regclass);
 A   ALTER TABLE public.dcim_devicerole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    234    235    235            �           2604    16650    dcim_devicetype id    DEFAULT     x   ALTER TABLE ONLY public.dcim_devicetype ALTER COLUMN id SET DEFAULT nextval('public.dcim_devicetype_id_seq'::regclass);
 A   ALTER TABLE public.dcim_devicetype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    236    237    237                       2604    18715    dcim_frontport id    DEFAULT     v   ALTER TABLE ONLY public.dcim_frontport ALTER COLUMN id SET DEFAULT nextval('public.dcim_frontport_id_seq'::regclass);
 @   ALTER TABLE public.dcim_frontport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    348    349    349                       2604    18725    dcim_frontporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_frontporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_frontporttemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_frontporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    350    351    351            �           2604    16659    dcim_interface id    DEFAULT     v   ALTER TABLE ONLY public.dcim_interface ALTER COLUMN id SET DEFAULT nextval('public.dcim_interface_id_seq'::regclass);
 @   ALTER TABLE public.dcim_interface ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    239    238    239            �           2604    18160    dcim_interface_tagged_vlans id    DEFAULT     �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.dcim_interface_tagged_vlans_id_seq'::regclass);
 M   ALTER TABLE public.dcim_interface_tagged_vlans ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    319    318    319            �           2604    16680    dcim_interfacetemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_interfacetemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_interfacetemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_interfacetemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    240    241    241            �           2604    16701    dcim_inventoryitem id    DEFAULT     w   ALTER TABLE ONLY public.dcim_inventoryitem ALTER COLUMN id SET DEFAULT nextval('public.dcim_module_id_seq'::regclass);
 D   ALTER TABLE public.dcim_inventoryitem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    244    245    245            �           2604    16689    dcim_manufacturer id    DEFAULT     |   ALTER TABLE ONLY public.dcim_manufacturer ALTER COLUMN id SET DEFAULT nextval('public.dcim_manufacturer_id_seq'::regclass);
 C   ALTER TABLE public.dcim_manufacturer ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    242    243    243            �           2604    16709    dcim_platform id    DEFAULT     t   ALTER TABLE ONLY public.dcim_platform ALTER COLUMN id SET DEFAULT nextval('public.dcim_platform_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_platform ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    247    246    247            .           2604    19441    dcim_powerfeed id    DEFAULT     v   ALTER TABLE ONLY public.dcim_powerfeed ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerfeed_id_seq'::regclass);
 @   ALTER TABLE public.dcim_powerfeed ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    378    379    379            �           2604    16721    dcim_poweroutlet id    DEFAULT     z   ALTER TABLE ONLY public.dcim_poweroutlet ALTER COLUMN id SET DEFAULT nextval('public.dcim_poweroutlet_id_seq'::regclass);
 B   ALTER TABLE public.dcim_poweroutlet ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    248    249    249            �           2604    16729    dcim_poweroutlettemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_poweroutlettemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_poweroutlettemplate_id_seq'::regclass);
 J   ALTER TABLE public.dcim_poweroutlettemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    250    251    251            3           2604    19460    dcim_powerpanel id    DEFAULT     x   ALTER TABLE ONLY public.dcim_powerpanel ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerpanel_id_seq'::regclass);
 A   ALTER TABLE public.dcim_powerpanel ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    381    380    381            �           2604    16737    dcim_powerport id    DEFAULT     v   ALTER TABLE ONLY public.dcim_powerport ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerport_id_seq'::regclass);
 @   ALTER TABLE public.dcim_powerport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    252    253    253            �           2604    16747    dcim_powerporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_powerporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_powerporttemplate_id_seq'::regclass);
 H   ALTER TABLE public.dcim_powerporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    254    255    255            �           2604    16755    dcim_rack id    DEFAULT     l   ALTER TABLE ONLY public.dcim_rack ALTER COLUMN id SET DEFAULT nextval('public.dcim_rack_id_seq'::regclass);
 ;   ALTER TABLE public.dcim_rack ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    256    257    257            �           2604    16767    dcim_rackgroup id    DEFAULT     v   ALTER TABLE ONLY public.dcim_rackgroup ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackgroup_id_seq'::regclass);
 @   ALTER TABLE public.dcim_rackgroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    258    259    259            �           2604    17451    dcim_rackreservation id    DEFAULT     �   ALTER TABLE ONLY public.dcim_rackreservation ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackreservation_id_seq'::regclass);
 F   ALTER TABLE public.dcim_rackreservation ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    288    289    289            �           2604    17300    dcim_rackrole id    DEFAULT     t   ALTER TABLE ONLY public.dcim_rackrole ALTER COLUMN id SET DEFAULT nextval('public.dcim_rackrole_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_rackrole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    282    283    283                       2604    18735    dcim_rearport id    DEFAULT     t   ALTER TABLE ONLY public.dcim_rearport ALTER COLUMN id SET DEFAULT nextval('public.dcim_rearport_id_seq'::regclass);
 ?   ALTER TABLE public.dcim_rearport ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    353    352    353                       2604    18745    dcim_rearporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.dcim_rearporttemplate ALTER COLUMN id SET DEFAULT nextval('public.dcim_rearporttemplate_id_seq'::regclass);
 G   ALTER TABLE public.dcim_rearporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    354    355    355            �           2604    17496    dcim_region id    DEFAULT     p   ALTER TABLE ONLY public.dcim_region ALTER COLUMN id SET DEFAULT nextval('public.dcim_region_id_seq'::regclass);
 =   ALTER TABLE public.dcim_region ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    290    291    291            �           2604    16775    dcim_site id    DEFAULT     l   ALTER TABLE ONLY public.dcim_site ALTER COLUMN id SET DEFAULT nextval('public.dcim_site_id_seq'::regclass);
 ;   ALTER TABLE public.dcim_site ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    260    261    261                        2604    18194    dcim_virtualchassis id    DEFAULT     �   ALTER TABLE ONLY public.dcim_virtualchassis ALTER COLUMN id SET DEFAULT nextval('public.dcim_virtualchassis_id_seq'::regclass);
 E   ALTER TABLE public.dcim_virtualchassis ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    320    321    321            �           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    219    218    219            �           2604    16402    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    204    205    205            �           2604    16391    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    202    203    203                       2604    18278    extras_configcontext id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_id_seq'::regclass);
 F   ALTER TABLE public.extras_configcontext ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    322    323    323            )           2604    19276 &   extras_configcontext_cluster_groups id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_cluster_groups_id_seq'::regclass);
 U   ALTER TABLE public.extras_configcontext_cluster_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    370    371    371            *           2604    19284     extras_configcontext_clusters id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_clusters ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_clusters_id_seq'::regclass);
 O   ALTER TABLE public.extras_configcontext_clusters ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    372    373    373                       2604    18292 !   extras_configcontext_platforms id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_platforms ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_platforms_id_seq'::regclass);
 P   ALTER TABLE public.extras_configcontext_platforms ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    324    325    325                       2604    18300    extras_configcontext_regions id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_regions ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_regions_id_seq'::regclass);
 N   ALTER TABLE public.extras_configcontext_regions ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    326    327    327                       2604    18308    extras_configcontext_roles id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_roles ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_roles_id_seq'::regclass);
 L   ALTER TABLE public.extras_configcontext_roles ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    328    329    329                       2604    18316    extras_configcontext_sites id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_sites ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_sites_id_seq'::regclass);
 L   ALTER TABLE public.extras_configcontext_sites ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    331    330    331            (           2604    19219    extras_configcontext_tags id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_tags ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tags_id_seq'::regclass);
 K   ALTER TABLE public.extras_configcontext_tags ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    368    369    369                       2604    18324 %   extras_configcontext_tenant_groups id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenant_groups_id_seq'::regclass);
 T   ALTER TABLE public.extras_configcontext_tenant_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    332    333    333                       2604    18332    extras_configcontext_tenants id    DEFAULT     �   ALTER TABLE ONLY public.extras_configcontext_tenants ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenants_id_seq'::regclass);
 N   ALTER TABLE public.extras_configcontext_tenants ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    334    335    335            �           2604    17910    extras_customfield id    DEFAULT     ~   ALTER TABLE ONLY public.extras_customfield ALTER COLUMN id SET DEFAULT nextval('public.extras_customfield_id_seq'::regclass);
 D   ALTER TABLE public.extras_customfield ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    307    306    307            �           2604    17922 #   extras_customfield_content_types id    DEFAULT     �   ALTER TABLE ONLY public.extras_customfield_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_customfield_obj_type_id_seq'::regclass);
 R   ALTER TABLE public.extras_customfield_content_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    308    309    309            &           2604    19111    extras_customlink id    DEFAULT     |   ALTER TABLE ONLY public.extras_customlink ALTER COLUMN id SET DEFAULT nextval('public.extras_customlink_id_seq'::regclass);
 C   ALTER TABLE public.extras_customlink ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    367    366    367            �           2604    17830    extras_exporttemplate id    DEFAULT     �   ALTER TABLE ONLY public.extras_exporttemplate ALTER COLUMN id SET DEFAULT nextval('public.extras_exporttemplate_id_seq'::regclass);
 G   ALTER TABLE public.extras_exporttemplate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    304    305    305            �           2604    17997    extras_imageattachment id    DEFAULT     �   ALTER TABLE ONLY public.extras_imageattachment ALTER COLUMN id SET DEFAULT nextval('public.extras_imageattachment_id_seq'::regclass);
 H   ALTER TABLE public.extras_imageattachment ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    311    310    311            =           2604    20423    extras_jobresult id    DEFAULT     z   ALTER TABLE ONLY public.extras_jobresult ALTER COLUMN id SET DEFAULT nextval('public.extras_jobresult_id_seq'::regclass);
 B   ALTER TABLE public.extras_jobresult ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    397    396    397            �           2604    18107    extras_objectchange id    DEFAULT     �   ALTER TABLE ONLY public.extras_objectchange ALTER COLUMN id SET DEFAULT nextval('public.extras_objectchange_id_seq'::regclass);
 E   ALTER TABLE public.extras_objectchange ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    317    316    317            	           2604    18457    extras_tag id    DEFAULT     n   ALTER TABLE ONLY public.extras_tag ALTER COLUMN id SET DEFAULT nextval('public.extras_tag_id_seq'::regclass);
 <   ALTER TABLE public.extras_tag ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    336    337    337            
           2604    18469    extras_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.extras_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.extras_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.extras_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    338    339    339            �           2604    18068    extras_webhook id    DEFAULT     v   ALTER TABLE ONLY public.extras_webhook ALTER COLUMN id SET DEFAULT nextval('public.extras_webhook_id_seq'::regclass);
 @   ALTER TABLE public.extras_webhook ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    312    313    313            �           2604    18082    extras_webhook_content_types id    DEFAULT     �   ALTER TABLE ONLY public.extras_webhook_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_webhook_obj_type_id_seq'::regclass);
 N   ALTER TABLE public.extras_webhook_content_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    315    314    315            �           2604    16909    ipam_aggregate id    DEFAULT     v   ALTER TABLE ONLY public.ipam_aggregate ALTER COLUMN id SET DEFAULT nextval('public.ipam_aggregate_id_seq'::regclass);
 @   ALTER TABLE public.ipam_aggregate ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    262    263    263            �           2604    16921    ipam_ipaddress id    DEFAULT     v   ALTER TABLE ONLY public.ipam_ipaddress ALTER COLUMN id SET DEFAULT nextval('public.ipam_ipaddress_id_seq'::regclass);
 @   ALTER TABLE public.ipam_ipaddress ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    265    264    265            �           2604    16935    ipam_prefix id    DEFAULT     p   ALTER TABLE ONLY public.ipam_prefix ALTER COLUMN id SET DEFAULT nextval('public.ipam_prefix_id_seq'::regclass);
 =   ALTER TABLE public.ipam_prefix ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    267    266    267            �           2604    16948    ipam_rir id    DEFAULT     j   ALTER TABLE ONLY public.ipam_rir ALTER COLUMN id SET DEFAULT nextval('public.ipam_rir_id_seq'::regclass);
 :   ALTER TABLE public.ipam_rir ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    269    268    269            �           2604    16960    ipam_role id    DEFAULT     l   ALTER TABLE ONLY public.ipam_role ALTER COLUMN id SET DEFAULT nextval('public.ipam_role_id_seq'::regclass);
 ;   ALTER TABLE public.ipam_role ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    271    270    271            >           2604    20491    ipam_routetarget id    DEFAULT     z   ALTER TABLE ONLY public.ipam_routetarget ALTER COLUMN id SET DEFAULT nextval('public.ipam_routetarget_id_seq'::regclass);
 B   ALTER TABLE public.ipam_routetarget ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    398    399    399            �           2604    17340    ipam_service id    DEFAULT     r   ALTER TABLE ONLY public.ipam_service ALTER COLUMN id SET DEFAULT nextval('public.ipam_service_id_seq'::regclass);
 >   ALTER TABLE public.ipam_service ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    284    285    285            �           2604    17350    ipam_service_ipaddresses id    DEFAULT     �   ALTER TABLE ONLY public.ipam_service_ipaddresses ALTER COLUMN id SET DEFAULT nextval('public.ipam_service_ipaddresses_id_seq'::regclass);
 J   ALTER TABLE public.ipam_service_ipaddresses ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    286    287    287            �           2604    16973    ipam_vlan id    DEFAULT     l   ALTER TABLE ONLY public.ipam_vlan ALTER COLUMN id SET DEFAULT nextval('public.ipam_vlan_id_seq'::regclass);
 ;   ALTER TABLE public.ipam_vlan ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    272    273    273            �           2604    17207    ipam_vlangroup id    DEFAULT     v   ALTER TABLE ONLY public.ipam_vlangroup ALTER COLUMN id SET DEFAULT nextval('public.ipam_vlangroup_id_seq'::regclass);
 @   ALTER TABLE public.ipam_vlangroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    280    281    281            �           2604    16983    ipam_vrf id    DEFAULT     j   ALTER TABLE ONLY public.ipam_vrf ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_id_seq'::regclass);
 :   ALTER TABLE public.ipam_vrf ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    274    275    275            ?           2604    20504    ipam_vrf_export_targets id    DEFAULT     �   ALTER TABLE ONLY public.ipam_vrf_export_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_export_targets_id_seq'::regclass);
 I   ALTER TABLE public.ipam_vrf_export_targets ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    401    400    401            @           2604    20512    ipam_vrf_import_targets id    DEFAULT     �   ALTER TABLE ONLY public.ipam_vrf_import_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_import_targets_id_seq'::regclass);
 I   ALTER TABLE public.ipam_vrf_import_targets ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    403    402    403                       2604    18579    secrets_secret id    DEFAULT     v   ALTER TABLE ONLY public.secrets_secret ALTER COLUMN id SET DEFAULT nextval('public.secrets_secret_id_seq'::regclass);
 @   ALTER TABLE public.secrets_secret ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    341    340    341                       2604    18590    secrets_secretrole id    DEFAULT     ~   ALTER TABLE ONLY public.secrets_secretrole ALTER COLUMN id SET DEFAULT nextval('public.secrets_secretrole_id_seq'::regclass);
 D   ALTER TABLE public.secrets_secretrole ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    342    343    343                       2604    18680    secrets_sessionkey id    DEFAULT     ~   ALTER TABLE ONLY public.secrets_sessionkey ALTER COLUMN id SET DEFAULT nextval('public.secrets_sessionkey_id_seq'::regclass);
 D   ALTER TABLE public.secrets_sessionkey ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    346    347    347                       2604    18618    secrets_userkey id    DEFAULT     x   ALTER TABLE ONLY public.secrets_userkey ALTER COLUMN id SET DEFAULT nextval('public.secrets_userkey_id_seq'::regclass);
 A   ALTER TABLE public.secrets_userkey ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    345    344    345            �           2604    17788    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    301    300    301            �           2604    17800    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    303    302    303            �           2604    16549    tenancy_tenant id    DEFAULT     v   ALTER TABLE ONLY public.tenancy_tenant ALTER COLUMN id SET DEFAULT nextval('public.tenancy_tenant_id_seq'::regclass);
 @   ALTER TABLE public.tenancy_tenant ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    221    220    221            �           2604    16564    tenancy_tenantgroup id    DEFAULT     �   ALTER TABLE ONLY public.tenancy_tenantgroup ALTER COLUMN id SET DEFAULT nextval('public.tenancy_tenantgroup_id_seq'::regclass);
 E   ALTER TABLE public.tenancy_tenantgroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    223    222    223            9           2604    20329    users_objectpermission id    DEFAULT     �   ALTER TABLE ONLY public.users_objectpermission ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_id_seq'::regclass);
 H   ALTER TABLE public.users_objectpermission ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    389    388    389            ;           2604    20348     users_objectpermission_groups id    DEFAULT     �   ALTER TABLE ONLY public.users_objectpermission_groups ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_groups_id_seq'::regclass);
 O   ALTER TABLE public.users_objectpermission_groups ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    392    393    393            :           2604    20340 &   users_objectpermission_object_types id    DEFAULT     �   ALTER TABLE ONLY public.users_objectpermission_object_types ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_object_types_id_seq'::regclass);
 U   ALTER TABLE public.users_objectpermission_object_types ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    391    390    391            <           2604    20356    users_objectpermission_users id    DEFAULT     �   ALTER TABLE ONLY public.users_objectpermission_users ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_users_id_seq'::regclass);
 N   ALTER TABLE public.users_objectpermission_users ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    395    394    395            7           2604    20294    users_token id    DEFAULT     p   ALTER TABLE ONLY public.users_token ALTER COLUMN id SET DEFAULT nextval('public.users_token_id_seq'::regclass);
 =   ALTER TABLE public.users_token ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    385    384    385            8           2604    20311    users_userconfig id    DEFAULT     z   ALTER TABLE ONLY public.users_userconfig ALTER COLUMN id SET DEFAULT nextval('public.users_userconfig_id_seq'::regclass);
 B   ALTER TABLE public.users_userconfig ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    387    386    387            �           2604    17649    virtualization_cluster id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_cluster ALTER COLUMN id SET DEFAULT nextval('public.virtualization_cluster_id_seq'::regclass);
 H   ALTER TABLE public.virtualization_cluster ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    293    292    293            �           2604    17662    virtualization_clustergroup id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_clustergroup ALTER COLUMN id SET DEFAULT nextval('public.virtualization_clustergroup_id_seq'::regclass);
 M   ALTER TABLE public.virtualization_clustergroup ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    294    295    295            �           2604    17674    virtualization_clustertype id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_clustertype ALTER COLUMN id SET DEFAULT nextval('public.virtualization_clustertype_id_seq'::regclass);
 L   ALTER TABLE public.virtualization_clustertype ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    296    297    297            �           2604    17686     virtualization_virtualmachine id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_virtualmachine ALTER COLUMN id SET DEFAULT nextval('public.virtualization_virtualmachine_id_seq'::regclass);
 O   ALTER TABLE public.virtualization_virtualmachine ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    299    298    299            +           2604    19379    virtualization_vminterface id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_vminterface ALTER COLUMN id SET DEFAULT nextval('public.virtualization_vminterface_id_seq'::regclass);
 L   ALTER TABLE public.virtualization_vminterface ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    375    374    375            -           2604    19388 *   virtualization_vminterface_tagged_vlans id    DEFAULT     �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.virtualization_vminterface_tagged_vlans_id_seq'::regclass);
 Y   ALTER TABLE public.virtualization_vminterface_tagged_vlans ALTER COLUMN id DROP DEFAULT;
       public          netbox    false    377    376    377            B          0    16417 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          netbox    false    209   o      D          0    16427    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          netbox    false    211   �o      @          0    16409    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          netbox    false    207   �o      F          0    16435 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          netbox    false    213   �{      H          0    16445    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          netbox    false    215   �|      J          0    16453    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          netbox    false    217   }      �          0    18820    circuits_circuit 
   TABLE DATA           �   COPY public.circuits_circuit (id, created, last_updated, cid, install_date, commit_rate, comments, provider_id, type_id, tenant_id, description, status, custom_field_data) FROM stdin;
    public          netbox    false    357   !}      �          0    18910    circuits_circuittermination 
   TABLE DATA           �   COPY public.circuits_circuittermination (id, term_side, port_speed, upstream_speed, xconnect_id, pp_info, circuit_id, site_id, cable_id, description, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    363   >}      �          0    18833    circuits_circuittype 
   TABLE DATA           b   COPY public.circuits_circuittype (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    359   [}      �          0    18845    circuits_provider 
   TABLE DATA           �   COPY public.circuits_provider (id, created, last_updated, name, slug, asn, account, portal_url, noc_contact, admin_contact, comments, custom_field_data) FROM stdin;
    public          netbox    false    361   x}      �          0    18941 
   dcim_cable 
   TABLE DATA             COPY public.dcim_cable (id, created, last_updated, termination_a_id, termination_b_id, type, status, label, color, length, length_unit, _abs_length, termination_a_type_id, termination_b_type_id, _termination_a_device_id, _termination_b_device_id, custom_field_data) FROM stdin;
    public          netbox    false    365   �}      �          0    20120    dcim_cablepath 
   TABLE DATA           �   COPY public.dcim_cablepath (id, origin_id, destination_id, path, is_active, is_split, destination_type_id, origin_type_id) FROM stdin;
    public          netbox    false    383   �}      R          0    16588    dcim_consoleport 
   TABLE DATA           �   COPY public.dcim_consoleport (id, name, device_id, cable_id, description, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    225   �}      T          0    16596    dcim_consoleporttemplate 
   TABLE DATA           m   COPY public.dcim_consoleporttemplate (id, name, device_type_id, type, _name, label, description) FROM stdin;
    public          netbox    false    227   �}      V          0    16604    dcim_consoleserverport 
   TABLE DATA           �   COPY public.dcim_consoleserverport (id, name, device_id, cable_id, description, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    229   	~      X          0    16612    dcim_consoleserverporttemplate 
   TABLE DATA           s   COPY public.dcim_consoleserverporttemplate (id, name, device_type_id, type, _name, label, description) FROM stdin;
    public          netbox    false    231   &~      Z          0    16620    dcim_device 
   TABLE DATA           O  COPY public.dcim_device (id, created, last_updated, name, serial, "position", face, status, comments, device_role_id, device_type_id, platform_id, rack_id, primary_ip4_id, primary_ip6_id, tenant_id, asset_tag, site_id, cluster_id, virtual_chassis_id, vc_position, vc_priority, local_context_data, _name, custom_field_data) FROM stdin;
    public          netbox    false    233   C~      �          0    17135    dcim_devicebay 
   TABLE DATA           m   COPY public.dcim_devicebay (id, name, device_id, installed_device_id, description, _name, label) FROM stdin;
    public          netbox    false    277   `~      �          0    17145    dcim_devicebaytemplate 
   TABLE DATA           e   COPY public.dcim_devicebaytemplate (id, name, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    279   }~      \          0    16635    dcim_devicerole 
   TABLE DATA           m   COPY public.dcim_devicerole (id, name, slug, color, vm_role, created, last_updated, description) FROM stdin;
    public          netbox    false    235   �~      ^          0    16647    dcim_devicetype 
   TABLE DATA           �   COPY public.dcim_devicetype (id, model, slug, u_height, is_full_depth, manufacturer_id, subdevice_role, part_number, comments, created, last_updated, front_image, rear_image, custom_field_data) FROM stdin;
    public          netbox    false    237   �~      �          0    18712    dcim_frontport 
   TABLE DATA           �   COPY public.dcim_frontport (id, name, type, rear_port_position, description, device_id, rear_port_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id) FROM stdin;
    public          netbox    false    349   �~      �          0    18722    dcim_frontporttemplate 
   TABLE DATA           �   COPY public.dcim_frontporttemplate (id, name, type, rear_port_position, device_type_id, rear_port_id, _name, label, description) FROM stdin;
    public          netbox    false    351   �~      `          0    16656    dcim_interface 
   TABLE DATA           �   COPY public.dcim_interface (id, name, type, mgmt_only, description, device_id, mac_address, lag_id, enabled, mtu, mode, untagged_vlan_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    239         �          0    18157    dcim_interface_tagged_vlans 
   TABLE DATA           P   COPY public.dcim_interface_tagged_vlans (id, interface_id, vlan_id) FROM stdin;
    public          netbox    false    319   +      b          0    16677    dcim_interfacetemplate 
   TABLE DATA           v   COPY public.dcim_interfacetemplate (id, name, type, mgmt_only, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    241   H      f          0    16698    dcim_inventoryitem 
   TABLE DATA           �   COPY public.dcim_inventoryitem (id, name, part_id, serial, discovered, device_id, parent_id, manufacturer_id, asset_tag, description, _name, label, level, lft, rght, tree_id) FROM stdin;
    public          netbox    false    245   e      d          0    16686    dcim_manufacturer 
   TABLE DATA           _   COPY public.dcim_manufacturer (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    243   �      h          0    16706    dcim_platform 
   TABLE DATA           �   COPY public.dcim_platform (id, name, slug, napalm_driver, manufacturer_id, created, last_updated, napalm_args, description) FROM stdin;
    public          netbox    false    247   �      �          0    19438    dcim_powerfeed 
   TABLE DATA           
  COPY public.dcim_powerfeed (id, created, last_updated, name, status, type, supply, phase, voltage, amperage, max_utilization, available_power, comments, cable_id, power_panel_id, rack_id, custom_field_data, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    379   �      j          0    16718    dcim_poweroutlet 
   TABLE DATA           �   COPY public.dcim_poweroutlet (id, name, device_id, cable_id, description, feed_leg, power_port_id, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    249   �      l          0    16726    dcim_poweroutlettemplate 
   TABLE DATA           �   COPY public.dcim_poweroutlettemplate (id, name, device_type_id, feed_leg, power_port_id, type, _name, label, description) FROM stdin;
    public          netbox    false    251   �      �          0    19457    dcim_powerpanel 
   TABLE DATA           u   COPY public.dcim_powerpanel (id, created, last_updated, name, rack_group_id, site_id, custom_field_data) FROM stdin;
    public          netbox    false    381   �      n          0    16734    dcim_powerport 
   TABLE DATA           �   COPY public.dcim_powerport (id, name, device_id, cable_id, description, allocated_draw, maximum_draw, type, _name, label, _cable_peer_id, _cable_peer_type_id, _path_id) FROM stdin;
    public          netbox    false    253   0�      p          0    16744    dcim_powerporttemplate 
   TABLE DATA           �   COPY public.dcim_powerporttemplate (id, name, device_type_id, allocated_draw, maximum_draw, type, _name, label, description) FROM stdin;
    public          netbox    false    255   M�      r          0    16752 	   dcim_rack 
   TABLE DATA              COPY public.dcim_rack (id, created, last_updated, name, facility_id, u_height, comments, group_id, site_id, tenant_id, type, width, role_id, desc_units, serial, status, asset_tag, outer_depth, outer_unit, outer_width, _name, custom_field_data) FROM stdin;
    public          netbox    false    257   j�      t          0    16764    dcim_rackgroup 
   TABLE DATA           �   COPY public.dcim_rackgroup (id, name, slug, site_id, created, last_updated, parent_id, level, lft, rght, tree_id, description) FROM stdin;
    public          netbox    false    259   ��      �          0    17448    dcim_rackreservation 
   TABLE DATA           �   COPY public.dcim_rackreservation (id, units, created, description, rack_id, user_id, tenant_id, last_updated, custom_field_data) FROM stdin;
    public          netbox    false    289   ��      �          0    17297    dcim_rackrole 
   TABLE DATA           b   COPY public.dcim_rackrole (id, name, slug, color, created, last_updated, description) FROM stdin;
    public          netbox    false    283   ��      �          0    18732    dcim_rearport 
   TABLE DATA           �   COPY public.dcim_rearport (id, name, type, positions, description, device_id, cable_id, _name, label, _cable_peer_id, _cable_peer_type_id) FROM stdin;
    public          netbox    false    353   ހ      �          0    18742    dcim_rearporttemplate 
   TABLE DATA           u   COPY public.dcim_rearporttemplate (id, name, type, positions, device_type_id, _name, label, description) FROM stdin;
    public          netbox    false    355   ��      �          0    17493    dcim_region 
   TABLE DATA              COPY public.dcim_region (id, name, slug, lft, rght, tree_id, level, parent_id, created, last_updated, description) FROM stdin;
    public          netbox    false    291   �      v          0    16772 	   dcim_site 
   TABLE DATA             COPY public.dcim_site (id, created, last_updated, name, slug, facility, asn, physical_address, shipping_address, comments, tenant_id, contact_email, contact_name, contact_phone, region_id, description, status, time_zone, latitude, longitude, _name, custom_field_data) FROM stdin;
    public          netbox    false    261   5�      �          0    18191    dcim_virtualchassis 
   TABLE DATA           t   COPY public.dcim_virtualchassis (id, domain, master_id, created, last_updated, name, custom_field_data) FROM stdin;
    public          netbox    false    321   R�      L          0    16513    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          netbox    false    219   o�      >          0    16399    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          netbox    false    205   ��      <          0    16388    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          netbox    false    203   ��                0    20594    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          netbox    false    404   c�      �          0    18275    extras_configcontext 
   TABLE DATA           u   COPY public.extras_configcontext (id, name, weight, description, is_active, data, created, last_updated) FROM stdin;
    public          netbox    false    323   ��      �          0    19273 #   extras_configcontext_cluster_groups 
   TABLE DATA           d   COPY public.extras_configcontext_cluster_groups (id, configcontext_id, clustergroup_id) FROM stdin;
    public          netbox    false    371   ��      �          0    19281    extras_configcontext_clusters 
   TABLE DATA           Y   COPY public.extras_configcontext_clusters (id, configcontext_id, cluster_id) FROM stdin;
    public          netbox    false    373   ��      �          0    18289    extras_configcontext_platforms 
   TABLE DATA           [   COPY public.extras_configcontext_platforms (id, configcontext_id, platform_id) FROM stdin;
    public          netbox    false    325   כ      �          0    18297    extras_configcontext_regions 
   TABLE DATA           W   COPY public.extras_configcontext_regions (id, configcontext_id, region_id) FROM stdin;
    public          netbox    false    327   ��      �          0    18305    extras_configcontext_roles 
   TABLE DATA           Y   COPY public.extras_configcontext_roles (id, configcontext_id, devicerole_id) FROM stdin;
    public          netbox    false    329   �      �          0    18313    extras_configcontext_sites 
   TABLE DATA           S   COPY public.extras_configcontext_sites (id, configcontext_id, site_id) FROM stdin;
    public          netbox    false    331   .�      �          0    19216    extras_configcontext_tags 
   TABLE DATA           Q   COPY public.extras_configcontext_tags (id, configcontext_id, tag_id) FROM stdin;
    public          netbox    false    369   K�      �          0    18321 "   extras_configcontext_tenant_groups 
   TABLE DATA           b   COPY public.extras_configcontext_tenant_groups (id, configcontext_id, tenantgroup_id) FROM stdin;
    public          netbox    false    333   h�      �          0    18329    extras_configcontext_tenants 
   TABLE DATA           W   COPY public.extras_configcontext_tenants (id, configcontext_id, tenant_id) FROM stdin;
    public          netbox    false    335   ��      �          0    17907    extras_customfield 
   TABLE DATA           �   COPY public.extras_customfield (id, type, name, label, description, required, weight, filter_logic, choices, "default", validation_maximum, validation_minimum, validation_regex) FROM stdin;
    public          netbox    false    307   ��      �          0    17919     extras_customfield_content_types 
   TABLE DATA           ^   COPY public.extras_customfield_content_types (id, customfield_id, contenttype_id) FROM stdin;
    public          netbox    false    309   ��      �          0    19108    extras_customlink 
   TABLE DATA              COPY public.extras_customlink (id, name, text, url, weight, group_name, button_class, new_window, content_type_id) FROM stdin;
    public          netbox    false    367   ܜ      �          0    17827    extras_exporttemplate 
   TABLE DATA           �   COPY public.extras_exporttemplate (id, name, template_code, mime_type, file_extension, content_type_id, description) FROM stdin;
    public          netbox    false    305   ��      �          0    17994    extras_imageattachment 
   TABLE DATA           �   COPY public.extras_imageattachment (id, object_id, image, image_height, image_width, name, created, content_type_id) FROM stdin;
    public          netbox    false    311   �      �          0    20420    extras_jobresult 
   TABLE DATA           t   COPY public.extras_jobresult (id, name, created, completed, status, data, job_id, obj_type_id, user_id) FROM stdin;
    public          netbox    false    397   3�      �          0    18104    extras_objectchange 
   TABLE DATA           �   COPY public.extras_objectchange (id, "time", user_name, request_id, action, changed_object_id, related_object_id, object_repr, object_data, changed_object_type_id, related_object_type_id, user_id) FROM stdin;
    public          netbox    false    317   P�      �          0    18454 
   extras_tag 
   TABLE DATA           _   COPY public.extras_tag (id, name, slug, color, description, created, last_updated) FROM stdin;
    public          netbox    false    337   m�      �          0    18466    extras_taggeditem 
   TABLE DATA           S   COPY public.extras_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          netbox    false    339   ��      �          0    18065    extras_webhook 
   TABLE DATA           �   COPY public.extras_webhook (id, name, type_create, type_update, type_delete, payload_url, http_content_type, secret, enabled, ssl_verification, ca_file_path, additional_headers, http_method, body_template) FROM stdin;
    public          netbox    false    313   ��      �          0    18079    extras_webhook_content_types 
   TABLE DATA           V   COPY public.extras_webhook_content_types (id, webhook_id, contenttype_id) FROM stdin;
    public          netbox    false    315   ĝ      x          0    16906    ipam_aggregate 
   TABLE DATA           �   COPY public.ipam_aggregate (id, created, last_updated, prefix, date_added, description, rir_id, custom_field_data, tenant_id) FROM stdin;
    public          netbox    false    263   �      z          0    16918    ipam_ipaddress 
   TABLE DATA           �   COPY public.ipam_ipaddress (id, created, last_updated, address, description, assigned_object_id, nat_inside_id, vrf_id, tenant_id, status, role, dns_name, assigned_object_type_id, custom_field_data) FROM stdin;
    public          netbox    false    265   ��      |          0    16932    ipam_prefix 
   TABLE DATA           �   COPY public.ipam_prefix (id, created, last_updated, prefix, status, description, role_id, site_id, vlan_id, vrf_id, tenant_id, is_pool, custom_field_data) FROM stdin;
    public          netbox    false    267   �      ~          0    16945    ipam_rir 
   TABLE DATA           b   COPY public.ipam_rir (id, name, slug, is_private, created, last_updated, description) FROM stdin;
    public          netbox    false    269   8�      �          0    16957 	   ipam_role 
   TABLE DATA           _   COPY public.ipam_role (id, name, slug, weight, created, last_updated, description) FROM stdin;
    public          netbox    false    271   U�                 0    20488    ipam_routetarget 
   TABLE DATA           v   COPY public.ipam_routetarget (id, created, last_updated, custom_field_data, name, description, tenant_id) FROM stdin;
    public          netbox    false    399   r�      �          0    17337    ipam_service 
   TABLE DATA           �   COPY public.ipam_service (id, created, last_updated, name, protocol, description, device_id, virtual_machine_id, custom_field_data, ports) FROM stdin;
    public          netbox    false    285   ��      �          0    17347    ipam_service_ipaddresses 
   TABLE DATA           P   COPY public.ipam_service_ipaddresses (id, service_id, ipaddress_id) FROM stdin;
    public          netbox    false    287   ��      �          0    16970 	   ipam_vlan 
   TABLE DATA           �   COPY public.ipam_vlan (id, created, last_updated, vid, name, status, role_id, site_id, group_id, description, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    273   ɞ      �          0    17204    ipam_vlangroup 
   TABLE DATA           e   COPY public.ipam_vlangroup (id, name, slug, site_id, created, last_updated, description) FROM stdin;
    public          netbox    false    281   �      �          0    16980    ipam_vrf 
   TABLE DATA           �   COPY public.ipam_vrf (id, created, last_updated, name, rd, description, enforce_unique, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    275   �                0    20501    ipam_vrf_export_targets 
   TABLE DATA           M   COPY public.ipam_vrf_export_targets (id, vrf_id, routetarget_id) FROM stdin;
    public          netbox    false    401    �                0    20509    ipam_vrf_import_targets 
   TABLE DATA           M   COPY public.ipam_vrf_import_targets (id, vrf_id, routetarget_id) FROM stdin;
    public          netbox    false    403   =�      �          0    18576    secrets_secret 
   TABLE DATA           �   COPY public.secrets_secret (id, created, last_updated, name, ciphertext, hash, role_id, custom_field_data, assigned_object_id, assigned_object_type_id) FROM stdin;
    public          netbox    false    341   Z�      �          0    18587    secrets_secretrole 
   TABLE DATA           `   COPY public.secrets_secretrole (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    343   w�      �          0    18677    secrets_sessionkey 
   TABLE DATA           S   COPY public.secrets_sessionkey (id, cipher, hash, created, userkey_id) FROM stdin;
    public          netbox    false    347   ��      �          0    18615    secrets_userkey 
   TABLE DATA           l   COPY public.secrets_userkey (id, created, last_updated, public_key, master_key_cipher, user_id) FROM stdin;
    public          netbox    false    345   ��      �          0    17785 
   taggit_tag 
   TABLE DATA           4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public          netbox    false    301   Ο      �          0    17797    taggit_taggeditem 
   TABLE DATA           S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          netbox    false    303   �      N          0    16546    tenancy_tenant 
   TABLE DATA           �   COPY public.tenancy_tenant (id, created, last_updated, name, slug, description, comments, group_id, custom_field_data) FROM stdin;
    public          netbox    false    221   �      P          0    16561    tenancy_tenantgroup 
   TABLE DATA           �   COPY public.tenancy_tenantgroup (id, name, slug, created, last_updated, parent_id, level, lft, rght, tree_id, description) FROM stdin;
    public          netbox    false    223   %�      �          0    20326    users_objectpermission 
   TABLE DATA           f   COPY public.users_objectpermission (id, name, description, enabled, constraints, actions) FROM stdin;
    public          netbox    false    389   B�      �          0    20345    users_objectpermission_groups 
   TABLE DATA           Z   COPY public.users_objectpermission_groups (id, objectpermission_id, group_id) FROM stdin;
    public          netbox    false    393   _�      �          0    20337 #   users_objectpermission_object_types 
   TABLE DATA           f   COPY public.users_objectpermission_object_types (id, objectpermission_id, contenttype_id) FROM stdin;
    public          netbox    false    391   |�      �          0    20353    users_objectpermission_users 
   TABLE DATA           X   COPY public.users_objectpermission_users (id, objectpermission_id, user_id) FROM stdin;
    public          netbox    false    395   ��      �          0    20291    users_token 
   TABLE DATA           e   COPY public.users_token (id, created, expires, key, write_enabled, description, user_id) FROM stdin;
    public          netbox    false    385   ��      �          0    20308    users_userconfig 
   TABLE DATA           =   COPY public.users_userconfig (id, data, user_id) FROM stdin;
    public          netbox    false    387   	�      �          0    17646    virtualization_cluster 
   TABLE DATA           �   COPY public.virtualization_cluster (id, created, last_updated, name, comments, group_id, type_id, site_id, tenant_id, custom_field_data) FROM stdin;
    public          netbox    false    293   1�      �          0    17659    virtualization_clustergroup 
   TABLE DATA           i   COPY public.virtualization_clustergroup (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    295   N�      �          0    17671    virtualization_clustertype 
   TABLE DATA           h   COPY public.virtualization_clustertype (id, name, slug, created, last_updated, description) FROM stdin;
    public          netbox    false    297   k�      �          0    17683    virtualization_virtualmachine 
   TABLE DATA           �   COPY public.virtualization_virtualmachine (id, created, last_updated, name, vcpus, memory, disk, comments, cluster_id, platform_id, primary_ip4_id, primary_ip6_id, tenant_id, status, role_id, local_context_data, custom_field_data) FROM stdin;
    public          netbox    false    299   ��      �          0    19376    virtualization_vminterface 
   TABLE DATA           �   COPY public.virtualization_vminterface (id, name, _name, enabled, mac_address, mtu, mode, description, untagged_vlan_id, virtual_machine_id) FROM stdin;
    public          netbox    false    375   ��      �          0    19385 '   virtualization_vminterface_tagged_vlans 
   TABLE DATA           ^   COPY public.virtualization_vminterface_tagged_vlans (id, vminterface_id, vlan_id) FROM stdin;
    public          netbox    false    377   ¡      r           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          netbox    false    208            s           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          netbox    false    210            t           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 332, true);
          public          netbox    false    206            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          netbox    false    214            v           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          netbox    false    212            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          netbox    false    216            x           0    0    circuits_circuit_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.circuits_circuit_id_seq', 1, false);
          public          netbox    false    356            y           0    0 "   circuits_circuittermination_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.circuits_circuittermination_id_seq', 1, false);
          public          netbox    false    362            z           0    0    circuits_circuittype_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.circuits_circuittype_id_seq', 1, false);
          public          netbox    false    358            {           0    0    circuits_provider_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.circuits_provider_id_seq', 1, false);
          public          netbox    false    360            |           0    0    dcim_cable_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dcim_cable_id_seq', 1, false);
          public          netbox    false    364            }           0    0    dcim_cablepath_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_cablepath_id_seq', 1, false);
          public          netbox    false    382            ~           0    0    dcim_consoleport_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dcim_consoleport_id_seq', 1, false);
          public          netbox    false    224                       0    0    dcim_consoleporttemplate_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dcim_consoleporttemplate_id_seq', 1, false);
          public          netbox    false    226            �           0    0    dcim_consoleserverport_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_consoleserverport_id_seq', 1, false);
          public          netbox    false    228            �           0    0 %   dcim_consoleserverporttemplate_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.dcim_consoleserverporttemplate_id_seq', 1, false);
          public          netbox    false    230            �           0    0    dcim_device_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_device_id_seq', 1, false);
          public          netbox    false    232            �           0    0    dcim_devicebay_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_devicebay_id_seq', 1, false);
          public          netbox    false    276            �           0    0    dcim_devicebaytemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_devicebaytemplate_id_seq', 1, false);
          public          netbox    false    278            �           0    0    dcim_devicerole_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_devicerole_id_seq', 1, false);
          public          netbox    false    234            �           0    0    dcim_devicetype_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_devicetype_id_seq', 1, false);
          public          netbox    false    236            �           0    0    dcim_frontport_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_frontport_id_seq', 1, false);
          public          netbox    false    348            �           0    0    dcim_frontporttemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_frontporttemplate_id_seq', 1, false);
          public          netbox    false    350            �           0    0    dcim_interface_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_interface_id_seq', 1, false);
          public          netbox    false    238            �           0    0 "   dcim_interface_tagged_vlans_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.dcim_interface_tagged_vlans_id_seq', 1, false);
          public          netbox    false    318            �           0    0    dcim_interfacetemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_interfacetemplate_id_seq', 1, false);
          public          netbox    false    240            �           0    0    dcim_manufacturer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.dcim_manufacturer_id_seq', 1, false);
          public          netbox    false    242            �           0    0    dcim_module_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_module_id_seq', 1, false);
          public          netbox    false    244            �           0    0    dcim_platform_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_platform_id_seq', 1, false);
          public          netbox    false    246            �           0    0    dcim_powerfeed_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_powerfeed_id_seq', 1, false);
          public          netbox    false    378            �           0    0    dcim_poweroutlet_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.dcim_poweroutlet_id_seq', 1, false);
          public          netbox    false    248            �           0    0    dcim_poweroutlettemplate_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dcim_poweroutlettemplate_id_seq', 1, false);
          public          netbox    false    250            �           0    0    dcim_powerpanel_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dcim_powerpanel_id_seq', 1, false);
          public          netbox    false    380            �           0    0    dcim_powerport_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_powerport_id_seq', 1, false);
          public          netbox    false    252            �           0    0    dcim_powerporttemplate_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.dcim_powerporttemplate_id_seq', 1, false);
          public          netbox    false    254            �           0    0    dcim_rack_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dcim_rack_id_seq', 1, false);
          public          netbox    false    256            �           0    0    dcim_rackgroup_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dcim_rackgroup_id_seq', 1, false);
          public          netbox    false    258            �           0    0    dcim_rackreservation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.dcim_rackreservation_id_seq', 1, false);
          public          netbox    false    288            �           0    0    dcim_rackrole_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_rackrole_id_seq', 1, false);
          public          netbox    false    282            �           0    0    dcim_rearport_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dcim_rearport_id_seq', 1, false);
          public          netbox    false    352            �           0    0    dcim_rearporttemplate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dcim_rearporttemplate_id_seq', 1, false);
          public          netbox    false    354            �           0    0    dcim_region_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dcim_region_id_seq', 1, false);
          public          netbox    false    290            �           0    0    dcim_site_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dcim_site_id_seq', 1, false);
          public          netbox    false    260            �           0    0    dcim_virtualchassis_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dcim_virtualchassis_id_seq', 1, false);
          public          netbox    false    320            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          netbox    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 84, true);
          public          netbox    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 316, true);
          public          netbox    false    202            �           0    0 *   extras_configcontext_cluster_groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.extras_configcontext_cluster_groups_id_seq', 1, false);
          public          netbox    false    370            �           0    0 $   extras_configcontext_clusters_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.extras_configcontext_clusters_id_seq', 1, false);
          public          netbox    false    372            �           0    0    extras_configcontext_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.extras_configcontext_id_seq', 1, false);
          public          netbox    false    322            �           0    0 %   extras_configcontext_platforms_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.extras_configcontext_platforms_id_seq', 1, false);
          public          netbox    false    324            �           0    0 #   extras_configcontext_regions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.extras_configcontext_regions_id_seq', 1, false);
          public          netbox    false    326            �           0    0 !   extras_configcontext_roles_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.extras_configcontext_roles_id_seq', 1, false);
          public          netbox    false    328            �           0    0 !   extras_configcontext_sites_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.extras_configcontext_sites_id_seq', 1, false);
          public          netbox    false    330            �           0    0     extras_configcontext_tags_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.extras_configcontext_tags_id_seq', 1, false);
          public          netbox    false    368            �           0    0 )   extras_configcontext_tenant_groups_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.extras_configcontext_tenant_groups_id_seq', 1, false);
          public          netbox    false    332            �           0    0 #   extras_configcontext_tenants_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.extras_configcontext_tenants_id_seq', 1, false);
          public          netbox    false    334            �           0    0    extras_customfield_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.extras_customfield_id_seq', 1, false);
          public          netbox    false    306            �           0    0 "   extras_customfield_obj_type_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.extras_customfield_obj_type_id_seq', 1, false);
          public          netbox    false    308            �           0    0    extras_customlink_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.extras_customlink_id_seq', 1, false);
          public          netbox    false    366            �           0    0    extras_exporttemplate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.extras_exporttemplate_id_seq', 1, false);
          public          netbox    false    304            �           0    0    extras_imageattachment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.extras_imageattachment_id_seq', 1, false);
          public          netbox    false    310            �           0    0    extras_jobresult_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.extras_jobresult_id_seq', 1, false);
          public          netbox    false    396            �           0    0    extras_objectchange_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.extras_objectchange_id_seq', 1, false);
          public          netbox    false    316            �           0    0    extras_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.extras_tag_id_seq', 1, false);
          public          netbox    false    336            �           0    0    extras_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.extras_taggeditem_id_seq', 1, false);
          public          netbox    false    338            �           0    0    extras_webhook_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.extras_webhook_id_seq', 1, false);
          public          netbox    false    312            �           0    0    extras_webhook_obj_type_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.extras_webhook_obj_type_id_seq', 1, false);
          public          netbox    false    314            �           0    0    ipam_aggregate_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_aggregate_id_seq', 1, false);
          public          netbox    false    262            �           0    0    ipam_ipaddress_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_ipaddress_id_seq', 1, false);
          public          netbox    false    264            �           0    0    ipam_prefix_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ipam_prefix_id_seq', 1, false);
          public          netbox    false    266            �           0    0    ipam_rir_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ipam_rir_id_seq', 1, false);
          public          netbox    false    268            �           0    0    ipam_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ipam_role_id_seq', 1, false);
          public          netbox    false    270            �           0    0    ipam_routetarget_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ipam_routetarget_id_seq', 1, false);
          public          netbox    false    398            �           0    0    ipam_service_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ipam_service_id_seq', 1, false);
          public          netbox    false    284            �           0    0    ipam_service_ipaddresses_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ipam_service_ipaddresses_id_seq', 1, false);
          public          netbox    false    286            �           0    0    ipam_vlan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ipam_vlan_id_seq', 1, false);
          public          netbox    false    272            �           0    0    ipam_vlangroup_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ipam_vlangroup_id_seq', 1, false);
          public          netbox    false    280            �           0    0    ipam_vrf_export_targets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ipam_vrf_export_targets_id_seq', 1, false);
          public          netbox    false    400            �           0    0    ipam_vrf_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ipam_vrf_id_seq', 1, false);
          public          netbox    false    274            �           0    0    ipam_vrf_import_targets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ipam_vrf_import_targets_id_seq', 1, false);
          public          netbox    false    402            �           0    0    secrets_secret_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.secrets_secret_id_seq', 1, false);
          public          netbox    false    340            �           0    0    secrets_secretrole_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.secrets_secretrole_id_seq', 1, false);
          public          netbox    false    342            �           0    0    secrets_sessionkey_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.secrets_sessionkey_id_seq', 1, false);
          public          netbox    false    346            �           0    0    secrets_userkey_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.secrets_userkey_id_seq', 1, false);
          public          netbox    false    344            �           0    0    taggit_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);
          public          netbox    false    300            �           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);
          public          netbox    false    302            �           0    0    tenancy_tenant_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tenancy_tenant_id_seq', 1, false);
          public          netbox    false    220            �           0    0    tenancy_tenantgroup_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tenancy_tenantgroup_id_seq', 1, false);
          public          netbox    false    222            �           0    0 $   users_objectpermission_groups_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.users_objectpermission_groups_id_seq', 1, false);
          public          netbox    false    392            �           0    0    users_objectpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.users_objectpermission_id_seq', 1, false);
          public          netbox    false    388            �           0    0 *   users_objectpermission_object_types_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.users_objectpermission_object_types_id_seq', 1, false);
          public          netbox    false    390            �           0    0 #   users_objectpermission_users_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.users_objectpermission_users_id_seq', 1, false);
          public          netbox    false    394            �           0    0    users_token_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_token_id_seq', 1, true);
          public          netbox    false    384            �           0    0    users_userconfig_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.users_userconfig_id_seq', 2, true);
          public          netbox    false    386            �           0    0    virtualization_cluster_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.virtualization_cluster_id_seq', 1, false);
          public          netbox    false    292            �           0    0 "   virtualization_clustergroup_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.virtualization_clustergroup_id_seq', 1, false);
          public          netbox    false    294            �           0    0 !   virtualization_clustertype_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.virtualization_clustertype_id_seq', 1, false);
          public          netbox    false    296            �           0    0 $   virtualization_virtualmachine_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.virtualization_virtualmachine_id_seq', 1, false);
          public          netbox    false    298            �           0    0 !   virtualization_vminterface_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.virtualization_vminterface_id_seq', 1, false);
          public          netbox    false    374            �           0    0 .   virtualization_vminterface_tagged_vlans_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.virtualization_vminterface_tagged_vlans_id_seq', 1, false);
          public          netbox    false    376            N           2606    16542    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            netbox    false    209            S           2606    16469 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            netbox    false    211    211            V           2606    16432 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            netbox    false    211            P           2606    16422    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            netbox    false    209            I           2606    16460 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            netbox    false    207    207            K           2606    16414 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            netbox    false    207            ^           2606    16450 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            netbox    false    215            a           2606    16484 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            netbox    false    215    215            X           2606    16440    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            netbox    false    213            d           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            netbox    false    217            g           2606    16498 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            netbox    false    217    217            [           2606    16536     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            netbox    false    213            c           2606    18830 &   circuits_circuit circuits_circuit_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_pkey;
       public            netbox    false    357            e           2606    20209 ?   circuits_circuit circuits_circuit_provider_id_cid_b6f29862_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_cid_b6f29862_uniq UNIQUE (provider_id, cid);
 i   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_provider_id_cid_b6f29862_uniq;
       public            netbox    false    357    357            ~           2606    18921 Z   circuits_circuittermination circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq UNIQUE (circuit_id, term_side);
 �   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq;
       public            netbox    false    363    363            �           2606    18917 <   circuits_circuittermination circuits_circuittermination_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_pkey;
       public            netbox    false    363            k           2606    20211 2   circuits_circuittype circuits_circuittype_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_name_key;
       public            netbox    false    359            m           2606    18838 .   circuits_circuittype circuits_circuittype_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_pkey;
       public            netbox    false    359            p           2606    20214 2   circuits_circuittype circuits_circuittype_slug_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_slug_key UNIQUE (slug);
 \   ALTER TABLE ONLY public.circuits_circuittype DROP CONSTRAINT circuits_circuittype_slug_key;
       public            netbox    false    359            s           2606    20217 ,   circuits_provider circuits_provider_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_name_key;
       public            netbox    false    361            u           2606    18854 (   circuits_provider circuits_provider_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_pkey;
       public            netbox    false    361            x           2606    20220 ,   circuits_provider circuits_provider_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.circuits_provider DROP CONSTRAINT circuits_provider_slug_key;
       public            netbox    false    361            �           2606    18951    dcim_cable dcim_cable_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_pkey;
       public            netbox    false    365            �           2606    18953 J   dcim_cable dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq UNIQUE (termination_a_type_id, termination_a_id);
 t   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq;
       public            netbox    false    365    365            �           2606    18955 J   dcim_cable dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq UNIQUE (termination_b_type_id, termination_b_id);
 t   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq;
       public            netbox    false    365    365            �           2606    20162 D   dcim_cablepath dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq UNIQUE (origin_type_id, origin_id);
 n   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq;
       public            netbox    false    383    383            �           2606    20130 "   dcim_cablepath dcim_cablepath_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_pkey;
       public            netbox    false    383            �           2606    19959 >   dcim_consoleport dcim_consoleport_device_id_name_293786b6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_name_293786b6_uniq UNIQUE (device_id, name);
 h   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_device_id_name_293786b6_uniq;
       public            netbox    false    225    225            �           2606    16593 &   dcim_consoleport dcim_consoleport_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_pkey;
       public            netbox    false    225            �           2606    19961 S   dcim_consoleporttemplate dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq UNIQUE (device_type_id, name);
 }   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq;
       public            netbox    false    227    227            �           2606    16601 6   dcim_consoleporttemplate dcim_consoleporttemplate_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemplate_pkey;
       public            netbox    false    227            �           2606    19963 J   dcim_consoleserverport dcim_consoleserverport_device_id_name_fb1c5999_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_name_fb1c5999_uniq UNIQUE (device_id, name);
 t   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_device_id_name_fb1c5999_uniq;
       public            netbox    false    229    229            �           2606    16609 2   dcim_consoleserverport dcim_consoleserverport_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_pkey;
       public            netbox    false    229            �           2606    19965 Y   dcim_consoleserverporttemplate dcim_consoleserverportte_device_type_id_name_a05c974d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverportte_device_type_id_name_a05c974d_uniq UNIQUE (device_type_id, name);
 �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverportte_device_type_id_name_a05c974d_uniq;
       public            netbox    false    231    231            �           2606    16617 B   dcim_consoleserverporttemplate dcim_consoleserverporttemplate_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverporttemplate_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverporttemplate_pkey;
       public            netbox    false    231            �           2606    17316 %   dcim_device dcim_device_asset_tag_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_asset_tag_key UNIQUE (asset_tag);
 O   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_asset_tag_key;
       public            netbox    false    233            �           2606    16630    dcim_device dcim_device_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_pkey;
       public            netbox    false    233            �           2606    17173 *   dcim_device dcim_device_primary_ip4_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_key UNIQUE (primary_ip4_id);
 T   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip4_id_key;
       public            netbox    false    233            �           2606    17180 *   dcim_device dcim_device_primary_ip6_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_key UNIQUE (primary_ip6_id);
 T   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip6_id_key;
       public            netbox    false    233            �           2606    19636 ;   dcim_device dcim_device_rack_id_position_face_43208a79_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_position_face_43208a79_uniq UNIQUE (rack_id, "position", face);
 e   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_rack_id_position_face_43208a79_uniq;
       public            netbox    false    233    233    233            �           2606    19843 <   dcim_device dcim_device_site_id_tenant_id_name_93f4f962_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_tenant_id_name_93f4f962_uniq UNIQUE (site_id, tenant_id, name);
 f   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_site_id_tenant_id_name_93f4f962_uniq;
       public            netbox    false    233    233    233            �           2606    18207 D   dcim_device dcim_device_virtual_chassis_id_vc_position_efea7133_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_vc_position_efea7133_uniq UNIQUE (virtual_chassis_id, vc_position);
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_virtual_chassis_id_vc_position_efea7133_uniq;
       public            netbox    false    233    233            ^           2606    19967 :   dcim_devicebay dcim_devicebay_device_id_name_2475a67b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_name_2475a67b_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_device_id_name_2475a67b_uniq;
       public            netbox    false    277    277            `           2606    17142 5   dcim_devicebay dcim_devicebay_installed_device_id_key 
   CONSTRAINT        ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_key UNIQUE (installed_device_id);
 _   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_installed_device_id_key;
       public            netbox    false    277            b           2606    17140 "   dcim_devicebay dcim_devicebay_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_pkey;
       public            netbox    false    277            e           2606    19969 O   dcim_devicebaytemplate dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq;
       public            netbox    false    279    279            g           2606    17150 2   dcim_devicebaytemplate dcim_devicebaytemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytemplate_pkey;
       public            netbox    false    279            �           2606    20223 (   dcim_devicerole dcim_devicerole_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_name_key;
       public            netbox    false    235            �           2606    16640 $   dcim_devicerole dcim_devicerole_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_pkey;
       public            netbox    false    235            �           2606    20226 (   dcim_devicerole dcim_devicerole_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.dcim_devicerole DROP CONSTRAINT dcim_devicerole_slug_key;
       public            netbox    false    235            �           2606    20229 C   dcim_devicetype dcim_devicetype_manufacturer_id_model_17948c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_model_17948c0c_uniq UNIQUE (manufacturer_id, model);
 m   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_model_17948c0c_uniq;
       public            netbox    false    237    237            �           2606    20231 B   dcim_devicetype dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq UNIQUE (manufacturer_id, slug);
 l   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq;
       public            netbox    false    237    237            �           2606    16653 $   dcim_devicetype dcim_devicetype_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_pkey;
       public            netbox    false    237            H           2606    18779 :   dcim_frontport dcim_frontport_device_id_name_235b7af2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_name_235b7af2_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_device_id_name_235b7af2_uniq;
       public            netbox    false    349    349            J           2606    18719 "   dcim_frontport dcim_frontport_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_pkey;
       public            netbox    false    349            M           2606    18781 K   dcim_frontport dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq UNIQUE (rear_port_id, rear_port_position);
 u   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq;
       public            netbox    false    349    349            P           2606    18775 O   dcim_frontporttemplate dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq;
       public            netbox    false    351    351            R           2606    18729 2   dcim_frontporttemplate dcim_frontporttemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_pkey;
       public            netbox    false    351            U           2606    18777 T   dcim_frontporttemplate dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq UNIQUE (rear_port_id, rear_port_position);
 ~   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq;
       public            netbox    false    351    351            �           2606    17633 :   dcim_interface dcim_interface_device_id_name_bffc4ec4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_name_bffc4ec4_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_device_id_name_bffc4ec4_uniq;
       public            netbox    false    239    239            �           2606    16662 "   dcim_interface dcim_interface_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_pkey;
       public            netbox    false    239            �           2606    18169 Z   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq UNIQUE (interface_id, vlan_id);
 �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq;
       public            netbox    false    319    319            �           2606    18162 <   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_pkey;
       public            netbox    false    319            �           2606    17635 O   dcim_interfacetemplate dcim_interfacetemplate_device_type_id_name_3a847237_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_device_type_id_name_3a847237_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetemplate_device_type_id_name_3a847237_uniq;
       public            netbox    false    241    241            �           2606    16683 2   dcim_interfacetemplate dcim_interfacetemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetemplate_pkey;
       public            netbox    false    241            �           2606    17618 3   dcim_inventoryitem dcim_inventoryitem_asset_tag_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_asset_tag_key UNIQUE (asset_tag);
 ]   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_asset_tag_key;
       public            netbox    false    245            �           2606    20235 ,   dcim_manufacturer dcim_manufacturer_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_name_key;
       public            netbox    false    243            �           2606    16691 (   dcim_manufacturer dcim_manufacturer_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_pkey;
       public            netbox    false    243            �           2606    20238 ,   dcim_manufacturer dcim_manufacturer_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.dcim_manufacturer DROP CONSTRAINT dcim_manufacturer_slug_key;
       public            netbox    false    243            �           2606    19971 E   dcim_inventoryitem dcim_module_device_id_parent_id_name_4d8292af_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_module_device_id_parent_id_name_4d8292af_uniq UNIQUE (device_id, parent_id, name);
 o   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_module_device_id_parent_id_name_4d8292af_uniq;
       public            netbox    false    245    245    245            �           2606    16703 #   dcim_inventoryitem dcim_module_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_module_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_module_pkey;
       public            netbox    false    245            �           2606    19537 $   dcim_platform dcim_platform_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_name_key;
       public            netbox    false    247            �           2606    16711     dcim_platform dcim_platform_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_pkey;
       public            netbox    false    247            �           2606    19540 $   dcim_platform dcim_platform_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_slug_key;
       public            netbox    false    247            �           2606    19454 "   dcim_powerfeed dcim_powerfeed_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_pkey;
       public            netbox    false    379            �           2606    20241 ?   dcim_powerfeed dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq UNIQUE (power_panel_id, name);
 i   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq;
       public            netbox    false    379    379            �           2606    19973 >   dcim_poweroutlet dcim_poweroutlet_device_id_name_981b00c1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_name_981b00c1_uniq UNIQUE (device_id, name);
 h   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_device_id_name_981b00c1_uniq;
       public            netbox    false    249    249            �           2606    16723 &   dcim_poweroutlet dcim_poweroutlet_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_pkey;
       public            netbox    false    249            �           2606    19975 S   dcim_poweroutlettemplate dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq UNIQUE (device_type_id, name);
 }   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq;
       public            netbox    false    251    251            �           2606    16731 6   dcim_poweroutlettemplate dcim_poweroutlettemplate_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemplate_pkey;
       public            netbox    false    251            �           2606    19462 $   dcim_powerpanel dcim_powerpanel_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_pkey;
       public            netbox    false    381            �           2606    20243 :   dcim_powerpanel dcim_powerpanel_site_id_name_804df4c0_uniq 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_name_804df4c0_uniq UNIQUE (site_id, name);
 d   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_site_id_name_804df4c0_uniq;
       public            netbox    false    381    381                        2606    19977 :   dcim_powerport dcim_powerport_device_id_name_948af82c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_name_948af82c_uniq UNIQUE (device_id, name);
 d   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_device_id_name_948af82c_uniq;
       public            netbox    false    253    253                       2606    16739 "   dcim_powerport dcim_powerport_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_pkey;
       public            netbox    false    253                       2606    19979 O   dcim_powerporttemplate dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq UNIQUE (device_type_id, name);
 y   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq;
       public            netbox    false    255    255                       2606    16749 2   dcim_powerporttemplate dcim_powerporttemplate_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttemplate_pkey;
       public            netbox    false    255            
           2606    19067 !   dcim_rack dcim_rack_asset_tag_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_asset_tag_key UNIQUE (asset_tag);
 K   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_asset_tag_key;
       public            netbox    false    257                       2606    18242 6   dcim_rack dcim_rack_group_id_facility_id_f16a53ae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_facility_id_f16a53ae_uniq UNIQUE (group_id, facility_id);
 `   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_facility_id_f16a53ae_uniq;
       public            netbox    false    257    257                       2606    20245 /   dcim_rack dcim_rack_group_id_name_846f3826_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_name_846f3826_uniq UNIQUE (group_id, name);
 Y   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_name_846f3826_uniq;
       public            netbox    false    257    257                       2606    16761    dcim_rack dcim_rack_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_pkey;
       public            netbox    false    257                       2606    16769 "   dcim_rackgroup dcim_rackgroup_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_pkey;
       public            netbox    false    259                       2606    20247 8   dcim_rackgroup dcim_rackgroup_site_id_name_c9bd921f_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_name_c9bd921f_uniq UNIQUE (site_id, name);
 b   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_name_c9bd921f_uniq;
       public            netbox    false    259    259                       2606    20249 8   dcim_rackgroup dcim_rackgroup_site_id_slug_7fbfd118_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_slug_7fbfd118_uniq UNIQUE (site_id, slug);
 b   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_slug_7fbfd118_uniq;
       public            netbox    false    259    259            �           2606    17456 .   dcim_rackreservation dcim_rackreservation_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_pkey;
       public            netbox    false    289            s           2606    20253 $   dcim_rackrole dcim_rackrole_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_name_key;
       public            netbox    false    283            u           2606    17302     dcim_rackrole dcim_rackrole_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_pkey;
       public            netbox    false    283            x           2606    20256 $   dcim_rackrole dcim_rackrole_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.dcim_rackrole DROP CONSTRAINT dcim_rackrole_slug_key;
       public            netbox    false    283            Z           2606    18773 8   dcim_rearport dcim_rearport_device_id_name_4b14dde6_uniq 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_name_4b14dde6_uniq UNIQUE (device_id, name);
 b   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_device_id_name_4b14dde6_uniq;
       public            netbox    false    353    353            \           2606    18739     dcim_rearport dcim_rearport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_pkey;
       public            netbox    false    353            _           2606    18771 M   dcim_rearporttemplate dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq UNIQUE (device_type_id, name);
 w   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq;
       public            netbox    false    355    355            a           2606    18749 0   dcim_rearporttemplate dcim_rearporttemplate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplate_pkey;
       public            netbox    false    355            �           2606    20259     dcim_region dcim_region_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_name_key;
       public            netbox    false    291            �           2606    17502    dcim_region dcim_region_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_pkey;
       public            netbox    false    291            �           2606    20262     dcim_region dcim_region_slug_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_slug_key UNIQUE (slug);
 J   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_slug_key;
       public            netbox    false    291            "           2606    20265    dcim_site dcim_site_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_name_key;
       public            netbox    false    261            $           2606    16781    dcim_site dcim_site_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_pkey;
       public            netbox    false    261            (           2606    20268    dcim_site dcim_site_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_slug_key;
       public            netbox    false    261            �           2606    18198 5   dcim_virtualchassis dcim_virtualchassis_master_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_key UNIQUE (master_id);
 _   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_master_id_key;
       public            netbox    false    321            �           2606    18196 ,   dcim_virtualchassis dcim_virtualchassis_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_pkey;
       public            netbox    false    321            j           2606    16522 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            netbox    false    219            D           2606    16406 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            netbox    false    205    205            F           2606    16404 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            netbox    false    205            B           2606    16396 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            netbox    false    203            �           2606    20601 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            netbox    false    404            �           2606    19302 ]   extras_configcontext_clusters extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq UNIQUE (configcontext_id, cluster_id);
 �   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq;
       public            netbox    false    373    373            �           2606    19288 c   extras_configcontext_cluster_groups extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq UNIQUE (configcontext_id, clustergroup_id);
 �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq;
       public            netbox    false    371    371            �           2606    19278 L   extras_configcontext_cluster_groups extras_configcontext_cluster_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_cluster_groups_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_cluster_groups_pkey;
       public            netbox    false    371            �           2606    19286 @   extras_configcontext_clusters extras_configcontext_clusters_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clusters_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_clusters_pkey;
       public            netbox    false    373            �           2606    18286 2   extras_configcontext extras_configcontext_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.extras_configcontext DROP CONSTRAINT extras_configcontext_name_key;
       public            netbox    false    323            �           2606    18284 .   extras_configcontext extras_configcontext_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.extras_configcontext DROP CONSTRAINT extras_configcontext_pkey;
       public            netbox    false    323            �           2606    18362 ^   extras_configcontext_platforms extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq UNIQUE (configcontext_id, platform_id);
 �   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq;
       public            netbox    false    325    325                        2606    18294 B   extras_configcontext_platforms extras_configcontext_platforms_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platforms_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_platforms_pkey;
       public            netbox    false    325                       2606    18376 \   extras_configcontext_regions extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq UNIQUE (configcontext_id, region_id);
 �   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq;
       public            netbox    false    327    327                       2606    18302 >   extras_configcontext_regions extras_configcontext_regions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_regions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_regions_pkey;
       public            netbox    false    327            	           2606    18390 Z   extras_configcontext_roles extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq UNIQUE (configcontext_id, devicerole_id);
 �   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq;
       public            netbox    false    329    329                       2606    18310 :   extras_configcontext_roles extras_configcontext_roles_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_roles_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_roles_pkey;
       public            netbox    false    329                       2606    18404 Z   extras_configcontext_sites extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq UNIQUE (configcontext_id, site_id);
 �   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq;
       public            netbox    false    331    331                       2606    18318 :   extras_configcontext_sites extras_configcontext_sites_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sites_pkey;
       public            netbox    false    331            �           2606    19223 Y   extras_configcontext_tags extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq UNIQUE (configcontext_id, tag_id);
 �   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq;
       public            netbox    false    369    369            �           2606    19221 8   extras_configcontext_tags extras_configcontext_tags_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_pkey;
       public            netbox    false    369                       2606    18432 \   extras_configcontext_tenants extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq UNIQUE (configcontext_id, tenant_id);
 �   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq;
       public            netbox    false    335    335                       2606    18418 b   extras_configcontext_tenant_groups extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq UNIQUE (configcontext_id, tenantgroup_id);
 �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq;
       public            netbox    false    333    333                       2606    18326 J   extras_configcontext_tenant_groups extras_configcontext_tenant_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenant_groups_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_tenant_groups_pkey;
       public            netbox    false    333                       2606    18334 >   extras_configcontext_tenants extras_configcontext_tenants_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenants_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_tenants_pkey;
       public            netbox    false    335            �           2606    17916 .   extras_customfield extras_customfield_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.extras_customfield DROP CONSTRAINT extras_customfield_name_key;
       public            netbox    false    307            �           2606    17949 `   extras_customfield_content_types extras_customfield_obj_t_customfield_id_contentty_77878958_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_obj_t_customfield_id_contentty_77878958_uniq UNIQUE (customfield_id, contenttype_id);
 �   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_obj_t_customfield_id_contentty_77878958_uniq;
       public            netbox    false    309    309            �           2606    17924 A   extras_customfield_content_types extras_customfield_obj_type_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_obj_type_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_obj_type_pkey;
       public            netbox    false    309            �           2606    17914 *   extras_customfield extras_customfield_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.extras_customfield DROP CONSTRAINT extras_customfield_pkey;
       public            netbox    false    307            �           2606    19119 ,   extras_customlink extras_customlink_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_name_key;
       public            netbox    false    367            �           2606    19117 (   extras_customlink extras_customlink_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_pkey;
       public            netbox    false    367            �           2606    17982 N   extras_exporttemplate extras_exporttemplate_content_type_id_name_edca9b9b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_content_type_id_name_edca9b9b_uniq UNIQUE (content_type_id, name);
 x   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplate_content_type_id_name_edca9b9b_uniq;
       public            netbox    false    305    305            �           2606    17835 0   extras_exporttemplate extras_exporttemplate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplate_pkey;
       public            netbox    false    305            �           2606    18002 2   extras_imageattachment extras_imageattachment_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachment_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.extras_imageattachment DROP CONSTRAINT extras_imageattachment_pkey;
       public            netbox    false    311            �           2606    20430 ,   extras_jobresult extras_jobresult_job_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_job_id_key UNIQUE (job_id);
 V   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_job_id_key;
       public            netbox    false    397            �           2606    20428 &   extras_jobresult extras_jobresult_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_pkey;
       public            netbox    false    397            �           2606    18115 ,   extras_objectchange extras_objectchange_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_pkey;
       public            netbox    false    317            "           2606    18461    extras_tag extras_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_name_key;
       public            netbox    false    337            $           2606    18459    extras_tag extras_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_pkey;
       public            netbox    false    337            '           2606    18463    extras_tag extras_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.extras_tag DROP CONSTRAINT extras_tag_slug_key;
       public            netbox    false    337            ,           2606    18471 (   extras_taggeditem extras_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_pkey;
       public            netbox    false    339            �           2606    18076 &   extras_webhook extras_webhook_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_name_key;
       public            netbox    false    313            �           2606    18084 9   extras_webhook_content_types extras_webhook_obj_type_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_obj_type_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_obj_type_pkey;
       public            netbox    false    315            �           2606    18089 \   extras_webhook_content_types extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq UNIQUE (webhook_id, contenttype_id);
 �   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_obj_type_webhook_id_contenttype_id_99b8b9c3_uniq;
       public            netbox    false    315    315            �           2606    18086 D   extras_webhook extras_webhook_payload_url_type_create__dd332134_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_payload_url_type_create__dd332134_uniq UNIQUE (payload_url, type_create, type_update, type_delete);
 n   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_payload_url_type_create__dd332134_uniq;
       public            netbox    false    313    313    313    313            �           2606    18074 "   extras_webhook extras_webhook_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.extras_webhook DROP CONSTRAINT extras_webhook_pkey;
       public            netbox    false    313            +           2606    16915 "   ipam_aggregate ipam_aggregate_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_pkey;
       public            netbox    false    263            0           2606    16929 /   ipam_ipaddress ipam_ipaddress_nat_inside_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_key UNIQUE (nat_inside_id);
 Y   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_nat_inside_id_key;
       public            netbox    false    265            2           2606    16927 "   ipam_ipaddress ipam_ipaddress_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_pkey;
       public            netbox    false    265            6           2606    16942    ipam_prefix ipam_prefix_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_pkey;
       public            netbox    false    267            >           2606    20551    ipam_rir ipam_rir_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_name_key;
       public            netbox    false    269            @           2606    16950    ipam_rir ipam_rir_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_pkey;
       public            netbox    false    269            C           2606    20554    ipam_rir ipam_rir_slug_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_slug_key UNIQUE (slug);
 D   ALTER TABLE ONLY public.ipam_rir DROP CONSTRAINT ipam_rir_slug_key;
       public            netbox    false    269            F           2606    20557    ipam_role ipam_role_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_name_key;
       public            netbox    false    271            H           2606    16963    ipam_role ipam_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_pkey;
       public            netbox    false    271            K           2606    20560    ipam_role ipam_role_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.ipam_role DROP CONSTRAINT ipam_role_slug_key;
       public            netbox    false    271            �           2606    20498 *   ipam_routetarget ipam_routetarget_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_name_key;
       public            netbox    false    399            �           2606    20496 &   ipam_routetarget ipam_routetarget_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_pkey;
       public            netbox    false    399                       2606    17352 6   ipam_service_ipaddresses ipam_service_ipaddresses_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_pkey;
       public            netbox    false    287            �           2606    17362 W   ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq UNIQUE (service_id, ipaddress_id);
 �   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq;
       public            netbox    false    287    287            {           2606    17344    ipam_service ipam_service_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_pkey;
       public            netbox    false    285            N           2606    17234 /   ipam_vlan ipam_vlan_group_id_name_e53919df_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_name_e53919df_uniq UNIQUE (group_id, name);
 Y   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_name_e53919df_uniq;
       public            netbox    false    273    273            P           2606    17229 .   ipam_vlan ipam_vlan_group_id_vid_5ca4cc47_uniq 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_vid_5ca4cc47_uniq UNIQUE (group_id, vid);
 X   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_vid_5ca4cc47_uniq;
       public            netbox    false    273    273            R           2606    16977    ipam_vlan ipam_vlan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_pkey;
       public            netbox    false    273            i           2606    17209 "   ipam_vlangroup ipam_vlangroup_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_pkey;
       public            netbox    false    281            l           2606    20563 8   ipam_vlangroup ipam_vlangroup_site_id_name_a38e981b_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_name_a38e981b_uniq UNIQUE (site_id, name);
 b   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_name_a38e981b_uniq;
       public            netbox    false    281    281            n           2606    20565 8   ipam_vlangroup ipam_vlangroup_site_id_slug_6372a304_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_slug_6372a304_uniq UNIQUE (site_id, slug);
 b   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_slug_6372a304_uniq;
       public            netbox    false    281    281            �           2606    20506 4   ipam_vrf_export_targets ipam_vrf_export_targets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_pkey;
       public            netbox    false    401            �           2606    20523 S   ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq UNIQUE (vrf_id, routetarget_id);
 }   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq;
       public            netbox    false    401    401            �           2606    20514 4   ipam_vrf_import_targets ipam_vrf_import_targets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_pkey;
       public            netbox    false    403            �           2606    20537 S   ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq UNIQUE (vrf_id, routetarget_id);
 }   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq;
       public            netbox    false    403    403            W           2606    16985    ipam_vrf ipam_vrf_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_pkey;
       public            netbox    false    275            Z           2606    16987    ipam_vrf ipam_vrf_rd_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_rd_key UNIQUE (rd);
 B   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_rd_key;
       public            netbox    false    275            0           2606    20581 D   secrets_secret secrets_secret_assigned_object_type_id__c3da11b2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_assigned_object_type_id__c3da11b2_uniq UNIQUE (assigned_object_type_id, assigned_object_id, role_id, name);
 n   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_assigned_object_type_id__c3da11b2_uniq;
       public            netbox    false    341    341    341    341            2           2606    18584 "   secrets_secret secrets_secret_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_pkey;
       public            netbox    false    341            6           2606    20589 .   secrets_secretrole secrets_secretrole_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_name_key;
       public            netbox    false    343            8           2606    18592 *   secrets_secretrole secrets_secretrole_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_pkey;
       public            netbox    false    343            ;           2606    20592 .   secrets_secretrole secrets_secretrole_slug_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_secretrole
    ADD CONSTRAINT secrets_secretrole_slug_key UNIQUE (slug);
 X   ALTER TABLE ONLY public.secrets_secretrole DROP CONSTRAINT secrets_secretrole_slug_key;
       public            netbox    false    343            A           2606    18685 *   secrets_sessionkey secrets_sessionkey_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_pkey;
       public            netbox    false    347            C           2606    18692 4   secrets_sessionkey secrets_sessionkey_userkey_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_userkey_id_key UNIQUE (userkey_id);
 ^   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_userkey_id_key;
       public            netbox    false    347            =           2606    18623 $   secrets_userkey secrets_userkey_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_pkey;
       public            netbox    false    345            ?           2606    18625 +   secrets_userkey secrets_userkey_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_user_id_key;
       public            netbox    false    345            �           2606    17792    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public            netbox    false    301            �           2606    17790    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public            netbox    false    301            �           2606    17794    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public            netbox    false    301            �           2606    20605 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public            netbox    false    303    303    303            �           2606    17802 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public            netbox    false    303            o           2606    20474 &   tenancy_tenant tenancy_tenant_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_name_key;
       public            netbox    false    221            q           2606    16554 "   tenancy_tenant tenancy_tenant_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_pkey;
       public            netbox    false    221            t           2606    20477 &   tenancy_tenant tenancy_tenant_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_slug_key;
       public            netbox    false    221            w           2606    20480 0   tenancy_tenantgroup tenancy_tenantgroup_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_name_key;
       public            netbox    false    223            z           2606    16566 ,   tenancy_tenantgroup tenancy_tenantgroup_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_pkey;
       public            netbox    false    223            }           2606    20483 0   tenancy_tenantgroup tenancy_tenantgroup_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_slug_key;
       public            netbox    false    223            �           2606    20374 ]   users_objectpermission_groups users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq UNIQUE (objectpermission_id, group_id);
 �   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq;
       public            netbox    false    393    393            �           2606    20350 @   users_objectpermission_groups users_objectpermission_groups_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_groups_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermission_groups_pkey;
       public            netbox    false    393            �           2606    20360 c   users_objectpermission_object_types users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq UNIQUE (objectpermission_id, contenttype_id);
 �   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq;
       public            netbox    false    391    391            �           2606    20342 L   users_objectpermission_object_types users_objectpermission_object_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_object_types_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermission_object_types_pkey;
       public            netbox    false    391            �           2606    20334 2   users_objectpermission users_objectpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.users_objectpermission
    ADD CONSTRAINT users_objectpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.users_objectpermission DROP CONSTRAINT users_objectpermission_pkey;
       public            netbox    false    389            �           2606    20388 \   users_objectpermission_users users_objectpermission_u_objectpermission_id_user_3a7db108_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_u_objectpermission_id_user_3a7db108_uniq UNIQUE (objectpermission_id, user_id);
 �   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_u_objectpermission_id_user_3a7db108_uniq;
       public            netbox    false    395    395            �           2606    20358 >   users_objectpermission_users users_objectpermission_users_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_users_pkey;
       public            netbox    false    395            �           2606    20298    users_token users_token_key_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_key_key UNIQUE (key);
 I   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_key_key;
       public            netbox    false    385            �           2606    20296    users_token users_token_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_pkey;
       public            netbox    false    385            �           2606    20316 &   users_userconfig users_userconfig_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_pkey;
       public            netbox    false    387            �           2606    20318 -   users_userconfig users_userconfig_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_user_id_key;
       public            netbox    false    387            �           2606    17656 6   virtualization_cluster virtualization_cluster_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_name_key;
       public            netbox    false    293            �           2606    17654 2   virtualization_cluster virtualization_cluster_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_pkey;
       public            netbox    false    293            �           2606    20607 @   virtualization_clustergroup virtualization_clustergroup_name_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_name_key UNIQUE (name);
 j   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_name_key;
       public            netbox    false    295            �           2606    17664 <   virtualization_clustergroup virtualization_clustergroup_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_pkey;
       public            netbox    false    295            �           2606    20610 @   virtualization_clustergroup virtualization_clustergroup_slug_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_slug_key UNIQUE (slug);
 j   ALTER TABLE ONLY public.virtualization_clustergroup DROP CONSTRAINT virtualization_clustergroup_slug_key;
       public            netbox    false    295            �           2606    20613 >   virtualization_clustertype virtualization_clustertype_name_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_name_key UNIQUE (name);
 h   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_name_key;
       public            netbox    false    297            �           2606    17676 :   virtualization_clustertype virtualization_clustertype_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_pkey;
       public            netbox    false    297            �           2606    20616 >   virtualization_clustertype virtualization_clustertype_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_slug_key UNIQUE (slug);
 h   ALTER TABLE ONLY public.virtualization_clustertype DROP CONSTRAINT virtualization_clustertype_slug_key;
       public            netbox    false    297            �           2606    18510 ]   virtualization_virtualmachine virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq UNIQUE (cluster_id, tenant_id, name);
 �   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq;
       public            netbox    false    299    299    299            �           2606    17694 @   virtualization_virtualmachine virtualization_virtualmachine_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_pkey;
       public            netbox    false    299            �           2606    17698 N   virtualization_virtualmachine virtualization_virtualmachine_primary_ip4_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip4_id_key UNIQUE (primary_ip4_id);
 x   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_primary_ip4_id_key;
       public            netbox    false    299            �           2606    17700 N   virtualization_virtualmachine virtualization_virtualmachine_primary_ip6_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip6_id_key UNIQUE (primary_ip6_id);
 x   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtualmachine_primary_ip6_id_key;
       public            netbox    false    299            �           2606    19392 Y   virtualization_vminterface virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq UNIQUE (virtual_machine_id, name);
 �   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq;
       public            netbox    false    375    375            �           2606    19406 e   virtualization_vminterface_tagged_vlans virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq UNIQUE (vminterface_id, vlan_id);
 �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq;
       public            netbox    false    377    377            �           2606    19382 :   virtualization_vminterface virtualization_vminterface_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterface_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vminterface_pkey;
       public            netbox    false    375            �           2606    19390 T   virtualization_vminterface_tagged_vlans virtualization_vminterface_tagged_vlans_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterface_tagged_vlans_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vminterface_tagged_vlans_pkey;
       public            netbox    false    377            L           1259    16543    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            netbox    false    209            Q           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            netbox    false    211            T           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            netbox    false    211            G           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            netbox    false    207            \           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            netbox    false    215            _           1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            netbox    false    215            b           1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            netbox    false    217            e           1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            netbox    false    217            Y           1259    16537     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            netbox    false    213            f           1259    18887 %   circuits_circuit_provider_id_d9195418    INDEX     i   CREATE INDEX circuits_circuit_provider_id_d9195418 ON public.circuits_circuit USING btree (provider_id);
 9   DROP INDEX public.circuits_circuit_provider_id_d9195418;
       public            netbox    false    357            g           1259    18906 #   circuits_circuit_tenant_id_812508a5    INDEX     e   CREATE INDEX circuits_circuit_tenant_id_812508a5 ON public.circuits_circuit USING btree (tenant_id);
 7   DROP INDEX public.circuits_circuit_tenant_id_812508a5;
       public            netbox    false    357            h           1259    18889 !   circuits_circuit_type_id_1b9f485a    INDEX     a   CREATE INDEX circuits_circuit_type_id_1b9f485a ON public.circuits_circuit USING btree (type_id);
 5   DROP INDEX public.circuits_circuit_type_id_1b9f485a;
       public            netbox    false    357            y           1259    20201 8   circuits_circuittermination__cable_peer_type_id_bd122156    INDEX     �   CREATE INDEX circuits_circuittermination__cable_peer_type_id_bd122156 ON public.circuits_circuittermination USING btree (_cable_peer_type_id);
 L   DROP INDEX public.circuits_circuittermination__cable_peer_type_id_bd122156;
       public            netbox    false    363            z           1259    20207 -   circuits_circuittermination__path_id_6dfd8db0    INDEX     y   CREATE INDEX circuits_circuittermination__path_id_6dfd8db0 ON public.circuits_circuittermination USING btree (_path_id);
 A   DROP INDEX public.circuits_circuittermination__path_id_6dfd8db0;
       public            netbox    false    363            {           1259    19097 -   circuits_circuittermination_cable_id_35e9f703    INDEX     y   CREATE INDEX circuits_circuittermination_cable_id_35e9f703 ON public.circuits_circuittermination USING btree (cable_id);
 A   DROP INDEX public.circuits_circuittermination_cable_id_35e9f703;
       public            netbox    false    363            |           1259    18937 /   circuits_circuittermination_circuit_id_257e87e7    INDEX     }   CREATE INDEX circuits_circuittermination_circuit_id_257e87e7 ON public.circuits_circuittermination USING btree (circuit_id);
 C   DROP INDEX public.circuits_circuittermination_circuit_id_257e87e7;
       public            netbox    false    363            �           1259    18938 ,   circuits_circuittermination_site_id_e6fe5652    INDEX     w   CREATE INDEX circuits_circuittermination_site_id_e6fe5652 ON public.circuits_circuittermination USING btree (site_id);
 @   DROP INDEX public.circuits_circuittermination_site_id_e6fe5652;
       public            netbox    false    363            i           1259    20212 '   circuits_circuittype_name_8256ea9a_like    INDEX     |   CREATE INDEX circuits_circuittype_name_8256ea9a_like ON public.circuits_circuittype USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.circuits_circuittype_name_8256ea9a_like;
       public            netbox    false    359            n           1259    20215 '   circuits_circuittype_slug_9b4b3cf9_like    INDEX     |   CREATE INDEX circuits_circuittype_slug_9b4b3cf9_like ON public.circuits_circuittype USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.circuits_circuittype_slug_9b4b3cf9_like;
       public            netbox    false    359            q           1259    20218 $   circuits_provider_name_8f2514f5_like    INDEX     v   CREATE INDEX circuits_provider_name_8f2514f5_like ON public.circuits_provider USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.circuits_provider_name_8f2514f5_like;
       public            netbox    false    361            v           1259    20221 $   circuits_provider_slug_c3c0aa10_like    INDEX     v   CREATE INDEX circuits_provider_slug_c3c0aa10_like ON public.circuits_provider USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.circuits_provider_slug_c3c0aa10_like;
       public            netbox    false    361            �           1259    19552 ,   dcim_cable__termination_a_device_id_e59cde1c    INDEX     w   CREATE INDEX dcim_cable__termination_a_device_id_e59cde1c ON public.dcim_cable USING btree (_termination_a_device_id);
 @   DROP INDEX public.dcim_cable__termination_a_device_id_e59cde1c;
       public            netbox    false    365            �           1259    19553 ,   dcim_cable__termination_b_device_id_a9073762    INDEX     w   CREATE INDEX dcim_cable__termination_b_device_id_a9073762 ON public.dcim_cable USING btree (_termination_b_device_id);
 @   DROP INDEX public.dcim_cable__termination_b_device_id_a9073762;
       public            netbox    false    365            �           1259    19055 )   dcim_cable_termination_a_type_id_a614bab8    INDEX     q   CREATE INDEX dcim_cable_termination_a_type_id_a614bab8 ON public.dcim_cable USING btree (termination_a_type_id);
 =   DROP INDEX public.dcim_cable_termination_a_type_id_a614bab8;
       public            netbox    false    365            �           1259    19056 )   dcim_cable_termination_b_type_id_a91595d0    INDEX     q   CREATE INDEX dcim_cable_termination_b_type_id_a91595d0 ON public.dcim_cable USING btree (termination_b_type_id);
 =   DROP INDEX public.dcim_cable_termination_b_type_id_a91595d0;
       public            netbox    false    365            �           1259    20173 +   dcim_cablepath_destination_type_id_a8c1654b    INDEX     u   CREATE INDEX dcim_cablepath_destination_type_id_a8c1654b ON public.dcim_cablepath USING btree (destination_type_id);
 ?   DROP INDEX public.dcim_cablepath_destination_type_id_a8c1654b;
       public            netbox    false    383            �           1259    20174 &   dcim_cablepath_origin_type_id_6de54f6d    INDEX     k   CREATE INDEX dcim_cablepath_origin_type_id_6de54f6d ON public.dcim_cablepath USING btree (origin_type_id);
 :   DROP INDEX public.dcim_cablepath_origin_type_id_6de54f6d;
       public            netbox    false    383                       1259    20110 -   dcim_consoleport__cable_peer_type_id_52adb1be    INDEX     y   CREATE INDEX dcim_consoleport__cable_peer_type_id_52adb1be ON public.dcim_consoleport USING btree (_cable_peer_type_id);
 A   DROP INDEX public.dcim_consoleport__cable_peer_type_id_52adb1be;
       public            netbox    false    225            �           1259    20175 "   dcim_consoleport__path_id_e40a4436    INDEX     c   CREATE INDEX dcim_consoleport__path_id_e40a4436 ON public.dcim_consoleport USING btree (_path_id);
 6   DROP INDEX public.dcim_consoleport__path_id_e40a4436;
       public            netbox    false    225            �           1259    19057 "   dcim_consoleport_cable_id_a9ae5465    INDEX     c   CREATE INDEX dcim_consoleport_cable_id_a9ae5465 ON public.dcim_consoleport USING btree (cable_id);
 6   DROP INDEX public.dcim_consoleport_cable_id_a9ae5465;
       public            netbox    false    225            �           1259    17132 #   dcim_consoleport_device_id_f2d90d3c    INDEX     e   CREATE INDEX dcim_consoleport_device_id_f2d90d3c ON public.dcim_consoleport USING btree (device_id);
 7   DROP INDEX public.dcim_consoleport_device_id_f2d90d3c;
       public            netbox    false    225            �           1259    17131 0   dcim_consoleporttemplate_device_type_id_075d4015    INDEX        CREATE INDEX dcim_consoleporttemplate_device_type_id_075d4015 ON public.dcim_consoleporttemplate USING btree (device_type_id);
 D   DROP INDEX public.dcim_consoleporttemplate_device_type_id_075d4015;
       public            netbox    false    227            �           1259    20111 3   dcim_consoleserverport__cable_peer_type_id_132b6744    INDEX     �   CREATE INDEX dcim_consoleserverport__cable_peer_type_id_132b6744 ON public.dcim_consoleserverport USING btree (_cable_peer_type_id);
 G   DROP INDEX public.dcim_consoleserverport__cable_peer_type_id_132b6744;
       public            netbox    false    229            �           1259    20176 (   dcim_consoleserverport__path_id_dc5abe09    INDEX     o   CREATE INDEX dcim_consoleserverport__path_id_dc5abe09 ON public.dcim_consoleserverport USING btree (_path_id);
 <   DROP INDEX public.dcim_consoleserverport__path_id_dc5abe09;
       public            netbox    false    229            �           1259    19058 (   dcim_consoleserverport_cable_id_f2940dfd    INDEX     o   CREATE INDEX dcim_consoleserverport_cable_id_f2940dfd ON public.dcim_consoleserverport USING btree (cable_id);
 <   DROP INDEX public.dcim_consoleserverport_cable_id_f2940dfd;
       public            netbox    false    229            �           1259    17130 )   dcim_consoleserverport_device_id_d9866581    INDEX     q   CREATE INDEX dcim_consoleserverport_device_id_d9866581 ON public.dcim_consoleserverport USING btree (device_id);
 =   DROP INDEX public.dcim_consoleserverport_device_id_d9866581;
       public            netbox    false    229            �           1259    17129 6   dcim_consoleserverporttemplate_device_type_id_579bdc86    INDEX     �   CREATE INDEX dcim_consoleserverporttemplate_device_type_id_579bdc86 ON public.dcim_consoleserverporttemplate USING btree (device_type_id);
 J   DROP INDEX public.dcim_consoleserverporttemplate_device_type_id_579bdc86;
       public            netbox    false    231            �           1259    17317 #   dcim_device_asset_tag_8dac1079_like    INDEX     t   CREATE INDEX dcim_device_asset_tag_8dac1079_like ON public.dcim_device USING btree (asset_tag varchar_pattern_ops);
 7   DROP INDEX public.dcim_device_asset_tag_8dac1079_like;
       public            netbox    false    233            �           1259    17764    dcim_device_cluster_id_cf852f78    INDEX     ]   CREATE INDEX dcim_device_cluster_id_cf852f78 ON public.dcim_device USING btree (cluster_id);
 3   DROP INDEX public.dcim_device_cluster_id_cf852f78;
       public            netbox    false    233            �           1259    16901 #   dcim_device_device_role_id_682e8188    INDEX     e   CREATE INDEX dcim_device_device_role_id_682e8188 ON public.dcim_device USING btree (device_role_id);
 7   DROP INDEX public.dcim_device_device_role_id_682e8188;
       public            netbox    false    233            �           1259    16902 #   dcim_device_device_type_id_d61b4086    INDEX     e   CREATE INDEX dcim_device_device_type_id_d61b4086 ON public.dcim_device USING btree (device_type_id);
 7   DROP INDEX public.dcim_device_device_type_id_d61b4086;
       public            netbox    false    233            �           1259    16903     dcim_device_platform_id_468138f1    INDEX     _   CREATE INDEX dcim_device_platform_id_468138f1 ON public.dcim_device USING btree (platform_id);
 4   DROP INDEX public.dcim_device_platform_id_468138f1;
       public            netbox    false    233            �           1259    17128    dcim_device_rack_id_23bde71f    INDEX     W   CREATE INDEX dcim_device_rack_id_23bde71f ON public.dcim_device USING btree (rack_id);
 0   DROP INDEX public.dcim_device_rack_id_23bde71f;
       public            netbox    false    233            �           1259    17474    dcim_device_site_id_ff897cf6    INDEX     W   CREATE INDEX dcim_device_site_id_ff897cf6 ON public.dcim_device USING btree (site_id);
 0   DROP INDEX public.dcim_device_site_id_ff897cf6;
       public            netbox    false    233            �           1259    17283    dcim_device_tenant_id_dcea7969    INDEX     [   CREATE INDEX dcim_device_tenant_id_dcea7969 ON public.dcim_device USING btree (tenant_id);
 2   DROP INDEX public.dcim_device_tenant_id_dcea7969;
       public            netbox    false    233            �           1259    18213 '   dcim_device_virtual_chassis_id_aed51693    INDEX     m   CREATE INDEX dcim_device_virtual_chassis_id_aed51693 ON public.dcim_device USING btree (virtual_chassis_id);
 ;   DROP INDEX public.dcim_device_virtual_chassis_id_aed51693;
       public            netbox    false    233            \           1259    17170 !   dcim_devicebay_device_id_0c8a1218    INDEX     a   CREATE INDEX dcim_devicebay_device_id_0c8a1218 ON public.dcim_devicebay USING btree (device_id);
 5   DROP INDEX public.dcim_devicebay_device_id_0c8a1218;
       public            netbox    false    277            c           1259    17171 .   dcim_devicebaytemplate_device_type_id_f4b24a29    INDEX     {   CREATE INDEX dcim_devicebaytemplate_device_type_id_f4b24a29 ON public.dcim_devicebaytemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_devicebaytemplate_device_type_id_f4b24a29;
       public            netbox    false    279            �           1259    20224 "   dcim_devicerole_name_1c813306_like    INDEX     r   CREATE INDEX dcim_devicerole_name_1c813306_like ON public.dcim_devicerole USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicerole_name_1c813306_like;
       public            netbox    false    235            �           1259    20227 "   dcim_devicerole_slug_7952643b_like    INDEX     r   CREATE INDEX dcim_devicerole_slug_7952643b_like ON public.dcim_devicerole USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicerole_slug_7952643b_like;
       public            netbox    false    235            �           1259    16900 (   dcim_devicetype_manufacturer_id_a3e8029e    INDEX     o   CREATE INDEX dcim_devicetype_manufacturer_id_a3e8029e ON public.dcim_devicetype USING btree (manufacturer_id);
 <   DROP INDEX public.dcim_devicetype_manufacturer_id_a3e8029e;
       public            netbox    false    237            �           1259    20232    dcim_devicetype_slug_448745bd    INDEX     Y   CREATE INDEX dcim_devicetype_slug_448745bd ON public.dcim_devicetype USING btree (slug);
 1   DROP INDEX public.dcim_devicetype_slug_448745bd;
       public            netbox    false    237            �           1259    20233 "   dcim_devicetype_slug_448745bd_like    INDEX     r   CREATE INDEX dcim_devicetype_slug_448745bd_like ON public.dcim_devicetype USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.dcim_devicetype_slug_448745bd_like;
       public            netbox    false    237            D           1259    20112 +   dcim_frontport__cable_peer_type_id_c4690f56    INDEX     u   CREATE INDEX dcim_frontport__cable_peer_type_id_c4690f56 ON public.dcim_frontport USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_frontport__cable_peer_type_id_c4690f56;
       public            netbox    false    349            E           1259    19062     dcim_frontport_cable_id_04ff8aab    INDEX     _   CREATE INDEX dcim_frontport_cable_id_04ff8aab ON public.dcim_frontport USING btree (cable_id);
 4   DROP INDEX public.dcim_frontport_cable_id_04ff8aab;
       public            netbox    false    349            F           1259    18807 !   dcim_frontport_device_id_950557b5    INDEX     a   CREATE INDEX dcim_frontport_device_id_950557b5 ON public.dcim_frontport USING btree (device_id);
 5   DROP INDEX public.dcim_frontport_device_id_950557b5;
       public            netbox    false    349            K           1259    18817 $   dcim_frontport_rear_port_id_78df2532    INDEX     g   CREATE INDEX dcim_frontport_rear_port_id_78df2532 ON public.dcim_frontport USING btree (rear_port_id);
 8   DROP INDEX public.dcim_frontport_rear_port_id_78df2532;
       public            netbox    false    349            N           1259    18815 .   dcim_frontporttemplate_device_type_id_f088b952    INDEX     {   CREATE INDEX dcim_frontporttemplate_device_type_id_f088b952 ON public.dcim_frontporttemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_frontporttemplate_device_type_id_f088b952;
       public            netbox    false    351            S           1259    18816 ,   dcim_frontporttemplate_rear_port_id_9775411b    INDEX     w   CREATE INDEX dcim_frontporttemplate_rear_port_id_9775411b ON public.dcim_frontporttemplate USING btree (rear_port_id);
 @   DROP INDEX public.dcim_frontporttemplate_rear_port_id_9775411b;
       public            netbox    false    351            �           1259    20113 +   dcim_interface__cable_peer_type_id_ce52cb81    INDEX     u   CREATE INDEX dcim_interface__cable_peer_type_id_ce52cb81 ON public.dcim_interface USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_interface__cable_peer_type_id_ce52cb81;
       public            netbox    false    239            �           1259    20177     dcim_interface__path_id_f8f4f7f0    INDEX     _   CREATE INDEX dcim_interface__path_id_f8f4f7f0 ON public.dcim_interface USING btree (_path_id);
 4   DROP INDEX public.dcim_interface__path_id_f8f4f7f0;
       public            netbox    false    239            �           1259    19061     dcim_interface_cable_id_1b264edb    INDEX     _   CREATE INDEX dcim_interface_cable_id_1b264edb ON public.dcim_interface USING btree (cable_id);
 4   DROP INDEX public.dcim_interface_cable_id_1b264edb;
       public            netbox    false    239            �           1259    16831 !   dcim_interface_device_id_359c6115    INDEX     a   CREATE INDEX dcim_interface_device_id_359c6115 ON public.dcim_interface USING btree (device_id);
 5   DROP INDEX public.dcim_interface_device_id_359c6115;
       public            netbox    false    239            �           1259    17490    dcim_interface_lag_id_ea1a1d12    INDEX     [   CREATE INDEX dcim_interface_lag_id_ea1a1d12 ON public.dcim_interface USING btree (lag_id);
 2   DROP INDEX public.dcim_interface_lag_id_ea1a1d12;
       public            netbox    false    239            �           1259    18180 1   dcim_interface_tagged_vlans_interface_id_5870c9e9    INDEX     �   CREATE INDEX dcim_interface_tagged_vlans_interface_id_5870c9e9 ON public.dcim_interface_tagged_vlans USING btree (interface_id);
 E   DROP INDEX public.dcim_interface_tagged_vlans_interface_id_5870c9e9;
       public            netbox    false    319            �           1259    18181 ,   dcim_interface_tagged_vlans_vlan_id_e027005c    INDEX     w   CREATE INDEX dcim_interface_tagged_vlans_vlan_id_e027005c ON public.dcim_interface_tagged_vlans USING btree (vlan_id);
 @   DROP INDEX public.dcim_interface_tagged_vlans_vlan_id_e027005c;
       public            netbox    false    319            �           1259    18182 (   dcim_interface_untagged_vlan_id_838dc7be    INDEX     o   CREATE INDEX dcim_interface_untagged_vlan_id_838dc7be ON public.dcim_interface USING btree (untagged_vlan_id);
 <   DROP INDEX public.dcim_interface_untagged_vlan_id_838dc7be;
       public            netbox    false    239            �           1259    16847 .   dcim_interfacetemplate_device_type_id_4bfcbfab    INDEX     {   CREATE INDEX dcim_interfacetemplate_device_type_id_4bfcbfab ON public.dcim_interfacetemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_interfacetemplate_device_type_id_4bfcbfab;
       public            netbox    false    241            �           1259    17620 *   dcim_inventoryitem_asset_tag_d3289273_like    INDEX     �   CREATE INDEX dcim_inventoryitem_asset_tag_d3289273_like ON public.dcim_inventoryitem USING btree (asset_tag varchar_pattern_ops);
 >   DROP INDEX public.dcim_inventoryitem_asset_tag_d3289273_like;
       public            netbox    false    245            �           1259    20061 #   dcim_inventoryitem_tree_id_4676ade2    INDEX     e   CREATE INDEX dcim_inventoryitem_tree_id_4676ade2 ON public.dcim_inventoryitem USING btree (tree_id);
 7   DROP INDEX public.dcim_inventoryitem_tree_id_4676ade2;
       public            netbox    false    245            �           1259    20236 $   dcim_manufacturer_name_841fcd92_like    INDEX     v   CREATE INDEX dcim_manufacturer_name_841fcd92_like ON public.dcim_manufacturer USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.dcim_manufacturer_name_841fcd92_like;
       public            netbox    false    243            �           1259    20239 $   dcim_manufacturer_slug_00430749_like    INDEX     v   CREATE INDEX dcim_manufacturer_slug_00430749_like ON public.dcim_manufacturer USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.dcim_manufacturer_slug_00430749_like;
       public            netbox    false    243            �           1259    16860    dcim_module_device_id_53cfd5be    INDEX     b   CREATE INDEX dcim_module_device_id_53cfd5be ON public.dcim_inventoryitem USING btree (device_id);
 2   DROP INDEX public.dcim_module_device_id_53cfd5be;
       public            netbox    false    245            �           1259    17294 $   dcim_module_manufacturer_id_95322cbb    INDEX     n   CREATE INDEX dcim_module_manufacturer_id_95322cbb ON public.dcim_inventoryitem USING btree (manufacturer_id);
 8   DROP INDEX public.dcim_module_manufacturer_id_95322cbb;
       public            netbox    false    245            �           1259    16861    dcim_module_parent_id_bb5d0341    INDEX     b   CREATE INDEX dcim_module_parent_id_bb5d0341 ON public.dcim_inventoryitem USING btree (parent_id);
 2   DROP INDEX public.dcim_module_parent_id_bb5d0341;
       public            netbox    false    245            �           1259    18219 &   dcim_platform_manufacturer_id_83f72d3d    INDEX     k   CREATE INDEX dcim_platform_manufacturer_id_83f72d3d ON public.dcim_platform USING btree (manufacturer_id);
 :   DROP INDEX public.dcim_platform_manufacturer_id_83f72d3d;
       public            netbox    false    247            �           1259    19538     dcim_platform_name_c2f04255_like    INDEX     n   CREATE INDEX dcim_platform_name_c2f04255_like ON public.dcim_platform USING btree (name varchar_pattern_ops);
 4   DROP INDEX public.dcim_platform_name_c2f04255_like;
       public            netbox    false    247            �           1259    19541     dcim_platform_slug_b0908ae4_like    INDEX     n   CREATE INDEX dcim_platform_slug_b0908ae4_like ON public.dcim_platform USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.dcim_platform_slug_b0908ae4_like;
       public            netbox    false    247            �           1259    20114 +   dcim_powerfeed__cable_peer_type_id_9f930589    INDEX     u   CREATE INDEX dcim_powerfeed__cable_peer_type_id_9f930589 ON public.dcim_powerfeed USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_powerfeed__cable_peer_type_id_9f930589;
       public            netbox    false    379            �           1259    20178     dcim_powerfeed__path_id_a1ea1f28    INDEX     _   CREATE INDEX dcim_powerfeed__path_id_a1ea1f28 ON public.dcim_powerfeed USING btree (_path_id);
 4   DROP INDEX public.dcim_powerfeed__path_id_a1ea1f28;
       public            netbox    false    379            �           1259    19517     dcim_powerfeed_cable_id_ec44c4f8    INDEX     _   CREATE INDEX dcim_powerfeed_cable_id_ec44c4f8 ON public.dcim_powerfeed USING btree (cable_id);
 4   DROP INDEX public.dcim_powerfeed_cable_id_ec44c4f8;
       public            netbox    false    379            �           1259    19530 &   dcim_powerfeed_power_panel_id_32bde3be    INDEX     k   CREATE INDEX dcim_powerfeed_power_panel_id_32bde3be ON public.dcim_powerfeed USING btree (power_panel_id);
 :   DROP INDEX public.dcim_powerfeed_power_panel_id_32bde3be;
       public            netbox    false    379            �           1259    19531    dcim_powerfeed_rack_id_7abba090    INDEX     ]   CREATE INDEX dcim_powerfeed_rack_id_7abba090 ON public.dcim_powerfeed USING btree (rack_id);
 3   DROP INDEX public.dcim_powerfeed_rack_id_7abba090;
       public            netbox    false    379            �           1259    20115 -   dcim_poweroutlet__cable_peer_type_id_bbff28d0    INDEX     y   CREATE INDEX dcim_poweroutlet__cable_peer_type_id_bbff28d0 ON public.dcim_poweroutlet USING btree (_cable_peer_type_id);
 A   DROP INDEX public.dcim_poweroutlet__cable_peer_type_id_bbff28d0;
       public            netbox    false    249            �           1259    20179 "   dcim_poweroutlet__path_id_cbb47bb9    INDEX     c   CREATE INDEX dcim_poweroutlet__path_id_cbb47bb9 ON public.dcim_poweroutlet USING btree (_path_id);
 6   DROP INDEX public.dcim_poweroutlet__path_id_cbb47bb9;
       public            netbox    false    249            �           1259    19060 "   dcim_poweroutlet_cable_id_8dbea1ec    INDEX     c   CREATE INDEX dcim_poweroutlet_cable_id_8dbea1ec ON public.dcim_poweroutlet USING btree (cable_id);
 6   DROP INDEX public.dcim_poweroutlet_cable_id_8dbea1ec;
       public            netbox    false    249            �           1259    16869 #   dcim_poweroutlet_device_id_286351d7    INDEX     e   CREATE INDEX dcim_poweroutlet_device_id_286351d7 ON public.dcim_poweroutlet USING btree (device_id);
 7   DROP INDEX public.dcim_poweroutlet_device_id_286351d7;
       public            netbox    false    249            �           1259    19532 '   dcim_poweroutlet_power_port_id_9bdf4163    INDEX     m   CREATE INDEX dcim_poweroutlet_power_port_id_9bdf4163 ON public.dcim_poweroutlet USING btree (power_port_id);
 ;   DROP INDEX public.dcim_poweroutlet_power_port_id_9bdf4163;
       public            netbox    false    249            �           1259    16875 0   dcim_poweroutlettemplate_device_type_id_26b2316c    INDEX        CREATE INDEX dcim_poweroutlettemplate_device_type_id_26b2316c ON public.dcim_poweroutlettemplate USING btree (device_type_id);
 D   DROP INDEX public.dcim_poweroutlettemplate_device_type_id_26b2316c;
       public            netbox    false    251            �           1259    19533 /   dcim_poweroutlettemplate_power_port_id_c0fb0c42    INDEX     }   CREATE INDEX dcim_poweroutlettemplate_power_port_id_c0fb0c42 ON public.dcim_poweroutlettemplate USING btree (power_port_id);
 C   DROP INDEX public.dcim_poweroutlettemplate_power_port_id_c0fb0c42;
       public            netbox    false    251            �           1259    19528 &   dcim_powerpanel_rack_group_id_76467cc9    INDEX     k   CREATE INDEX dcim_powerpanel_rack_group_id_76467cc9 ON public.dcim_powerpanel USING btree (rack_group_id);
 :   DROP INDEX public.dcim_powerpanel_rack_group_id_76467cc9;
       public            netbox    false    381            �           1259    19529     dcim_powerpanel_site_id_c430bc89    INDEX     _   CREATE INDEX dcim_powerpanel_site_id_c430bc89 ON public.dcim_powerpanel USING btree (site_id);
 4   DROP INDEX public.dcim_powerpanel_site_id_c430bc89;
       public            netbox    false    381            �           1259    20116 +   dcim_powerport__cable_peer_type_id_9df2a278    INDEX     u   CREATE INDEX dcim_powerport__cable_peer_type_id_9df2a278 ON public.dcim_powerport USING btree (_cable_peer_type_id);
 ?   DROP INDEX public.dcim_powerport__cable_peer_type_id_9df2a278;
       public            netbox    false    253            �           1259    20180     dcim_powerport__path_id_9fe4af8f    INDEX     _   CREATE INDEX dcim_powerport__path_id_9fe4af8f ON public.dcim_powerport USING btree (_path_id);
 4   DROP INDEX public.dcim_powerport__path_id_9fe4af8f;
       public            netbox    false    253            �           1259    19059     dcim_powerport_cable_id_c9682ba2    INDEX     _   CREATE INDEX dcim_powerport_cable_id_c9682ba2 ON public.dcim_powerport USING btree (cable_id);
 4   DROP INDEX public.dcim_powerport_cable_id_c9682ba2;
       public            netbox    false    253            �           1259    16886 !   dcim_powerport_device_id_ef7185ae    INDEX     a   CREATE INDEX dcim_powerport_device_id_ef7185ae ON public.dcim_powerport USING btree (device_id);
 5   DROP INDEX public.dcim_powerport_device_id_ef7185ae;
       public            netbox    false    253                       1259    16892 .   dcim_powerporttemplate_device_type_id_1ddfbfcc    INDEX     {   CREATE INDEX dcim_powerporttemplate_device_type_id_1ddfbfcc ON public.dcim_powerporttemplate USING btree (device_type_id);
 B   DROP INDEX public.dcim_powerporttemplate_device_type_id_1ddfbfcc;
       public            netbox    false    255                       1259    19071 !   dcim_rack_asset_tag_f88408e5_like    INDEX     p   CREATE INDEX dcim_rack_asset_tag_f88408e5_like ON public.dcim_rack USING btree (asset_tag varchar_pattern_ops);
 5   DROP INDEX public.dcim_rack_asset_tag_f88408e5_like;
       public            netbox    false    257                       1259    16898    dcim_rack_group_id_44e90ea9    INDEX     U   CREATE INDEX dcim_rack_group_id_44e90ea9 ON public.dcim_rack USING btree (group_id);
 /   DROP INDEX public.dcim_rack_group_id_44e90ea9;
       public            netbox    false    257                       1259    17314    dcim_rack_role_id_62d6919e    INDEX     S   CREATE INDEX dcim_rack_role_id_62d6919e ON public.dcim_rack USING btree (role_id);
 .   DROP INDEX public.dcim_rack_role_id_62d6919e;
       public            netbox    false    257                       1259    16899    dcim_rack_site_id_403c7b3a    INDEX     S   CREATE INDEX dcim_rack_site_id_403c7b3a ON public.dcim_rack USING btree (site_id);
 .   DROP INDEX public.dcim_rack_site_id_403c7b3a;
       public            netbox    false    257                       1259    17284    dcim_rack_tenant_id_7cdf3725    INDEX     W   CREATE INDEX dcim_rack_tenant_id_7cdf3725 ON public.dcim_rack USING btree (tenant_id);
 0   DROP INDEX public.dcim_rack_tenant_id_7cdf3725;
       public            netbox    false    257                       1259    19903 !   dcim_rackgroup_parent_id_cc315105    INDEX     a   CREATE INDEX dcim_rackgroup_parent_id_cc315105 ON public.dcim_rackgroup USING btree (parent_id);
 5   DROP INDEX public.dcim_rackgroup_parent_id_cc315105;
       public            netbox    false    259                       1259    16897    dcim_rackgroup_site_id_13520e89    INDEX     ]   CREATE INDEX dcim_rackgroup_site_id_13520e89 ON public.dcim_rackgroup USING btree (site_id);
 3   DROP INDEX public.dcim_rackgroup_site_id_13520e89;
       public            netbox    false    259                       1259    20250    dcim_rackgroup_slug_3f4582a7    INDEX     W   CREATE INDEX dcim_rackgroup_slug_3f4582a7 ON public.dcim_rackgroup USING btree (slug);
 0   DROP INDEX public.dcim_rackgroup_slug_3f4582a7;
       public            netbox    false    259                       1259    20251 !   dcim_rackgroup_slug_3f4582a7_like    INDEX     p   CREATE INDEX dcim_rackgroup_slug_3f4582a7_like ON public.dcim_rackgroup USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.dcim_rackgroup_slug_3f4582a7_like;
       public            netbox    false    259                       1259    19904    dcim_rackgroup_tree_id_9c2ad6f4    INDEX     ]   CREATE INDEX dcim_rackgroup_tree_id_9c2ad6f4 ON public.dcim_rackgroup USING btree (tree_id);
 3   DROP INDEX public.dcim_rackgroup_tree_id_9c2ad6f4;
       public            netbox    false    259            �           1259    17467 %   dcim_rackreservation_rack_id_1ebbaa9b    INDEX     i   CREATE INDEX dcim_rackreservation_rack_id_1ebbaa9b ON public.dcim_rackreservation USING btree (rack_id);
 9   DROP INDEX public.dcim_rackreservation_rack_id_1ebbaa9b;
       public            netbox    false    289            �           1259    18188 '   dcim_rackreservation_tenant_id_eb5e045f    INDEX     m   CREATE INDEX dcim_rackreservation_tenant_id_eb5e045f ON public.dcim_rackreservation USING btree (tenant_id);
 ;   DROP INDEX public.dcim_rackreservation_tenant_id_eb5e045f;
       public            netbox    false    289            �           1259    17468 %   dcim_rackreservation_user_id_0785a527    INDEX     i   CREATE INDEX dcim_rackreservation_user_id_0785a527 ON public.dcim_rackreservation USING btree (user_id);
 9   DROP INDEX public.dcim_rackreservation_user_id_0785a527;
       public            netbox    false    289            q           1259    20254     dcim_rackrole_name_9077cfcc_like    INDEX     n   CREATE INDEX dcim_rackrole_name_9077cfcc_like ON public.dcim_rackrole USING btree (name varchar_pattern_ops);
 4   DROP INDEX public.dcim_rackrole_name_9077cfcc_like;
       public            netbox    false    283            v           1259    20257     dcim_rackrole_slug_40bbcd3a_like    INDEX     n   CREATE INDEX dcim_rackrole_slug_40bbcd3a_like ON public.dcim_rackrole USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.dcim_rackrole_slug_40bbcd3a_like;
       public            netbox    false    283            V           1259    20117 *   dcim_rearport__cable_peer_type_id_cecf241c    INDEX     s   CREATE INDEX dcim_rearport__cable_peer_type_id_cecf241c ON public.dcim_rearport USING btree (_cable_peer_type_id);
 >   DROP INDEX public.dcim_rearport__cable_peer_type_id_cecf241c;
       public            netbox    false    353            W           1259    19063    dcim_rearport_cable_id_42c0e4e7    INDEX     ]   CREATE INDEX dcim_rearport_cable_id_42c0e4e7 ON public.dcim_rearport USING btree (cable_id);
 3   DROP INDEX public.dcim_rearport_cable_id_42c0e4e7;
       public            netbox    false    353            X           1259    18813     dcim_rearport_device_id_0bdfe9c0    INDEX     _   CREATE INDEX dcim_rearport_device_id_0bdfe9c0 ON public.dcim_rearport USING btree (device_id);
 4   DROP INDEX public.dcim_rearport_device_id_0bdfe9c0;
       public            netbox    false    353            ]           1259    18814 -   dcim_rearporttemplate_device_type_id_6a02fd01    INDEX     y   CREATE INDEX dcim_rearporttemplate_device_type_id_6a02fd01 ON public.dcim_rearporttemplate USING btree (device_type_id);
 A   DROP INDEX public.dcim_rearporttemplate_device_type_id_6a02fd01;
       public            netbox    false    355            �           1259    20260    dcim_region_name_ba5a7082_like    INDEX     j   CREATE INDEX dcim_region_name_ba5a7082_like ON public.dcim_region USING btree (name varchar_pattern_ops);
 2   DROP INDEX public.dcim_region_name_ba5a7082_like;
       public            netbox    false    291            �           1259    17523    dcim_region_parent_id_2486f5d4    INDEX     [   CREATE INDEX dcim_region_parent_id_2486f5d4 ON public.dcim_region USING btree (parent_id);
 2   DROP INDEX public.dcim_region_parent_id_2486f5d4;
       public            netbox    false    291            �           1259    20263    dcim_region_slug_ff078a66_like    INDEX     j   CREATE INDEX dcim_region_slug_ff078a66_like ON public.dcim_region USING btree (slug varchar_pattern_ops);
 2   DROP INDEX public.dcim_region_slug_ff078a66_like;
       public            netbox    false    291            �           1259    17521    dcim_region_tree_id_a09ea9a7    INDEX     W   CREATE INDEX dcim_region_tree_id_a09ea9a7 ON public.dcim_region USING btree (tree_id);
 0   DROP INDEX public.dcim_region_tree_id_a09ea9a7;
       public            netbox    false    291                        1259    20266    dcim_site_name_8fe66c76_like    INDEX     f   CREATE INDEX dcim_site_name_8fe66c76_like ON public.dcim_site USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.dcim_site_name_8fe66c76_like;
       public            netbox    false    261            %           1259    17524    dcim_site_region_id_45210932    INDEX     W   CREATE INDEX dcim_site_region_id_45210932 ON public.dcim_site USING btree (region_id);
 0   DROP INDEX public.dcim_site_region_id_45210932;
       public            netbox    false    261            &           1259    20269    dcim_site_slug_4412c762_like    INDEX     f   CREATE INDEX dcim_site_slug_4412c762_like ON public.dcim_site USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.dcim_site_slug_4412c762_like;
       public            netbox    false    261            )           1259    17285    dcim_site_tenant_id_15e7df63    INDEX     W   CREATE INDEX dcim_site_tenant_id_15e7df63 ON public.dcim_site USING btree (tenant_id);
 0   DROP INDEX public.dcim_site_tenant_id_15e7df63;
       public            netbox    false    261            h           1259    16533 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            netbox    false    219            k           1259    16534 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            netbox    false    219            �           1259    20603 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            netbox    false    404            �           1259    20602 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            netbox    false    404            �           1259    19300 <   extras_configcontext_cluster_groups_clustergroup_id_f4322ce8    INDEX     �   CREATE INDEX extras_configcontext_cluster_groups_clustergroup_id_f4322ce8 ON public.extras_configcontext_cluster_groups USING btree (clustergroup_id);
 P   DROP INDEX public.extras_configcontext_cluster_groups_clustergroup_id_f4322ce8;
       public            netbox    false    371            �           1259    19299 =   extras_configcontext_cluster_groups_configcontext_id_8f50b794    INDEX     �   CREATE INDEX extras_configcontext_cluster_groups_configcontext_id_8f50b794 ON public.extras_configcontext_cluster_groups USING btree (configcontext_id);
 Q   DROP INDEX public.extras_configcontext_cluster_groups_configcontext_id_8f50b794;
       public            netbox    false    371            �           1259    19314 1   extras_configcontext_clusters_cluster_id_6abd47a1    INDEX     �   CREATE INDEX extras_configcontext_clusters_cluster_id_6abd47a1 ON public.extras_configcontext_clusters USING btree (cluster_id);
 E   DROP INDEX public.extras_configcontext_clusters_cluster_id_6abd47a1;
       public            netbox    false    373            �           1259    19313 7   extras_configcontext_clusters_configcontext_id_ed579a40    INDEX     �   CREATE INDEX extras_configcontext_clusters_configcontext_id_ed579a40 ON public.extras_configcontext_clusters USING btree (configcontext_id);
 K   DROP INDEX public.extras_configcontext_clusters_configcontext_id_ed579a40;
       public            netbox    false    373            �           1259    18360 '   extras_configcontext_name_4bbfe25d_like    INDEX     |   CREATE INDEX extras_configcontext_name_4bbfe25d_like ON public.extras_configcontext USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.extras_configcontext_name_4bbfe25d_like;
       public            netbox    false    323            �           1259    18373 8   extras_configcontext_platforms_configcontext_id_2a516699    INDEX     �   CREATE INDEX extras_configcontext_platforms_configcontext_id_2a516699 ON public.extras_configcontext_platforms USING btree (configcontext_id);
 L   DROP INDEX public.extras_configcontext_platforms_configcontext_id_2a516699;
       public            netbox    false    325                       1259    18374 3   extras_configcontext_platforms_platform_id_3fdfedc0    INDEX     �   CREATE INDEX extras_configcontext_platforms_platform_id_3fdfedc0 ON public.extras_configcontext_platforms USING btree (platform_id);
 G   DROP INDEX public.extras_configcontext_platforms_platform_id_3fdfedc0;
       public            netbox    false    325                       1259    18387 6   extras_configcontext_regions_configcontext_id_73003dbc    INDEX     �   CREATE INDEX extras_configcontext_regions_configcontext_id_73003dbc ON public.extras_configcontext_regions USING btree (configcontext_id);
 J   DROP INDEX public.extras_configcontext_regions_configcontext_id_73003dbc;
       public            netbox    false    327                       1259    18388 /   extras_configcontext_regions_region_id_35c6ba9d    INDEX     }   CREATE INDEX extras_configcontext_regions_region_id_35c6ba9d ON public.extras_configcontext_regions USING btree (region_id);
 C   DROP INDEX public.extras_configcontext_regions_region_id_35c6ba9d;
       public            netbox    false    327            
           1259    18401 4   extras_configcontext_roles_configcontext_id_59b67386    INDEX     �   CREATE INDEX extras_configcontext_roles_configcontext_id_59b67386 ON public.extras_configcontext_roles USING btree (configcontext_id);
 H   DROP INDEX public.extras_configcontext_roles_configcontext_id_59b67386;
       public            netbox    false    329                       1259    18402 1   extras_configcontext_roles_devicerole_id_d3a84813    INDEX     �   CREATE INDEX extras_configcontext_roles_devicerole_id_d3a84813 ON public.extras_configcontext_roles USING btree (devicerole_id);
 E   DROP INDEX public.extras_configcontext_roles_devicerole_id_d3a84813;
       public            netbox    false    329                       1259    18415 4   extras_configcontext_sites_configcontext_id_8c54feb9    INDEX     �   CREATE INDEX extras_configcontext_sites_configcontext_id_8c54feb9 ON public.extras_configcontext_sites USING btree (configcontext_id);
 H   DROP INDEX public.extras_configcontext_sites_configcontext_id_8c54feb9;
       public            netbox    false    331                       1259    18416 +   extras_configcontext_sites_site_id_cbb76c96    INDEX     u   CREATE INDEX extras_configcontext_sites_site_id_cbb76c96 ON public.extras_configcontext_sites USING btree (site_id);
 ?   DROP INDEX public.extras_configcontext_sites_site_id_cbb76c96;
       public            netbox    false    331            �           1259    19234 3   extras_configcontext_tags_configcontext_id_64a392b1    INDEX     �   CREATE INDEX extras_configcontext_tags_configcontext_id_64a392b1 ON public.extras_configcontext_tags USING btree (configcontext_id);
 G   DROP INDEX public.extras_configcontext_tags_configcontext_id_64a392b1;
       public            netbox    false    369            �           1259    19235 )   extras_configcontext_tags_tag_id_129a5d87    INDEX     q   CREATE INDEX extras_configcontext_tags_tag_id_129a5d87 ON public.extras_configcontext_tags USING btree (tag_id);
 =   DROP INDEX public.extras_configcontext_tags_tag_id_129a5d87;
       public            netbox    false    369                       1259    18429 <   extras_configcontext_tenant_groups_configcontext_id_92f68345    INDEX     �   CREATE INDEX extras_configcontext_tenant_groups_configcontext_id_92f68345 ON public.extras_configcontext_tenant_groups USING btree (configcontext_id);
 P   DROP INDEX public.extras_configcontext_tenant_groups_configcontext_id_92f68345;
       public            netbox    false    333                       1259    18430 :   extras_configcontext_tenant_groups_tenantgroup_id_0909688d    INDEX     �   CREATE INDEX extras_configcontext_tenant_groups_tenantgroup_id_0909688d ON public.extras_configcontext_tenant_groups USING btree (tenantgroup_id);
 N   DROP INDEX public.extras_configcontext_tenant_groups_tenantgroup_id_0909688d;
       public            netbox    false    333                       1259    18443 6   extras_configcontext_tenants_configcontext_id_b53552a6    INDEX     �   CREATE INDEX extras_configcontext_tenants_configcontext_id_b53552a6 ON public.extras_configcontext_tenants USING btree (configcontext_id);
 J   DROP INDEX public.extras_configcontext_tenants_configcontext_id_b53552a6;
       public            netbox    false    335                       1259    18444 /   extras_configcontext_tenants_tenant_id_8d0aa28e    INDEX     }   CREATE INDEX extras_configcontext_tenants_tenant_id_8d0aa28e ON public.extras_configcontext_tenants USING btree (tenant_id);
 C   DROP INDEX public.extras_configcontext_tenants_tenant_id_8d0aa28e;
       public            netbox    false    335            �           1259    17947 %   extras_customfield_name_2fe72707_like    INDEX     x   CREATE INDEX extras_customfield_name_2fe72707_like ON public.extras_customfield USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.extras_customfield_name_2fe72707_like;
       public            netbox    false    307            �           1259    17961 3   extras_customfield_obj_type_contenttype_id_6890b714    INDEX     �   CREATE INDEX extras_customfield_obj_type_contenttype_id_6890b714 ON public.extras_customfield_content_types USING btree (contenttype_id);
 G   DROP INDEX public.extras_customfield_obj_type_contenttype_id_6890b714;
       public            netbox    false    309            �           1259    17960 3   extras_customfield_obj_type_customfield_id_82480f86    INDEX     �   CREATE INDEX extras_customfield_obj_type_customfield_id_82480f86 ON public.extras_customfield_content_types USING btree (customfield_id);
 G   DROP INDEX public.extras_customfield_obj_type_customfield_id_82480f86;
       public            netbox    false    309            �           1259    19151 *   extras_customlink_content_type_id_4d35b063    INDEX     s   CREATE INDEX extras_customlink_content_type_id_4d35b063 ON public.extras_customlink USING btree (content_type_id);
 >   DROP INDEX public.extras_customlink_content_type_id_4d35b063;
       public            netbox    false    367            �           1259    19150 $   extras_customlink_name_daed2d18_like    INDEX     v   CREATE INDEX extras_customlink_name_daed2d18_like ON public.extras_customlink USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.extras_customlink_name_daed2d18_like;
       public            netbox    false    367            �           1259    17884 .   extras_exporttemplate_content_type_id_59737e21    INDEX     {   CREATE INDEX extras_exporttemplate_content_type_id_59737e21 ON public.extras_exporttemplate USING btree (content_type_id);
 B   DROP INDEX public.extras_exporttemplate_content_type_id_59737e21;
       public            netbox    false    305            �           1259    18008 /   extras_imageattachment_content_type_id_90e0643d    INDEX     }   CREATE INDEX extras_imageattachment_content_type_id_90e0643d ON public.extras_imageattachment USING btree (content_type_id);
 C   DROP INDEX public.extras_imageattachment_content_type_id_90e0643d;
       public            netbox    false    311            �           1259    20441 %   extras_jobresult_obj_type_id_475e80aa    INDEX     i   CREATE INDEX extras_jobresult_obj_type_id_475e80aa ON public.extras_jobresult USING btree (obj_type_id);
 9   DROP INDEX public.extras_jobresult_obj_type_id_475e80aa;
       public            netbox    false    397            �           1259    20442 !   extras_jobresult_user_id_d35285ab    INDEX     a   CREATE INDEX extras_jobresult_user_id_d35285ab ON public.extras_jobresult USING btree (user_id);
 5   DROP INDEX public.extras_jobresult_user_id_d35285ab;
       public            netbox    false    397            �           1259    18131 3   extras_objectchange_changed_object_type_id_b755bb60    INDEX     �   CREATE INDEX extras_objectchange_changed_object_type_id_b755bb60 ON public.extras_objectchange USING btree (changed_object_type_id);
 G   DROP INDEX public.extras_objectchange_changed_object_type_id_b755bb60;
       public            netbox    false    317            �           1259    18132 3   extras_objectchange_related_object_type_id_fe6e521f    INDEX     �   CREATE INDEX extras_objectchange_related_object_type_id_fe6e521f ON public.extras_objectchange USING btree (related_object_type_id);
 G   DROP INDEX public.extras_objectchange_related_object_type_id_fe6e521f;
       public            netbox    false    317            �           1259    19152 !   extras_objectchange_time_224380ea    INDEX     c   CREATE INDEX extras_objectchange_time_224380ea ON public.extras_objectchange USING btree ("time");
 5   DROP INDEX public.extras_objectchange_time_224380ea;
       public            netbox    false    317            �           1259    18133 $   extras_objectchange_user_id_7fdf8186    INDEX     g   CREATE INDEX extras_objectchange_user_id_7fdf8186 ON public.extras_objectchange USING btree (user_id);
 8   DROP INDEX public.extras_objectchange_user_id_7fdf8186;
       public            netbox    false    317                        1259    18473    extras_tag_name_9550b3d9_like    INDEX     h   CREATE INDEX extras_tag_name_9550b3d9_like ON public.extras_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.extras_tag_name_9550b3d9_like;
       public            netbox    false    337            %           1259    18474    extras_tag_slug_aaa5b7e9_like    INDEX     h   CREATE INDEX extras_tag_slug_aaa5b7e9_like ON public.extras_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.extras_tag_slug_aaa5b7e9_like;
       public            netbox    false    337            (           1259    18486 *   extras_taggeditem_content_type_id_ba5562ed    INDEX     s   CREATE INDEX extras_taggeditem_content_type_id_ba5562ed ON public.extras_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.extras_taggeditem_content_type_id_ba5562ed;
       public            netbox    false    339            )           1259    18472 8   extras_taggeditem_content_type_id_object_id_80e28e23_idx    INDEX     �   CREATE INDEX extras_taggeditem_content_type_id_object_id_80e28e23_idx ON public.extras_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.extras_taggeditem_content_type_id_object_id_80e28e23_idx;
       public            netbox    false    339    339            *           1259    18485 $   extras_taggeditem_object_id_31b2aa77    INDEX     g   CREATE INDEX extras_taggeditem_object_id_31b2aa77 ON public.extras_taggeditem USING btree (object_id);
 8   DROP INDEX public.extras_taggeditem_object_id_31b2aa77;
       public            netbox    false    339            -           1259    18487 !   extras_taggeditem_tag_id_d48af7c7    INDEX     a   CREATE INDEX extras_taggeditem_tag_id_d48af7c7 ON public.extras_taggeditem USING btree (tag_id);
 5   DROP INDEX public.extras_taggeditem_tag_id_d48af7c7;
       public            netbox    false    339            �           1259    18087 !   extras_webhook_name_82cf60b5_like    INDEX     p   CREATE INDEX extras_webhook_name_82cf60b5_like ON public.extras_webhook USING btree (name varchar_pattern_ops);
 5   DROP INDEX public.extras_webhook_name_82cf60b5_like;
       public            netbox    false    313            �           1259    18101 /   extras_webhook_obj_type_contenttype_id_85c7693b    INDEX     �   CREATE INDEX extras_webhook_obj_type_contenttype_id_85c7693b ON public.extras_webhook_content_types USING btree (contenttype_id);
 C   DROP INDEX public.extras_webhook_obj_type_contenttype_id_85c7693b;
       public            netbox    false    315            �           1259    18100 +   extras_webhook_obj_type_webhook_id_c7bed170    INDEX     z   CREATE INDEX extras_webhook_obj_type_webhook_id_c7bed170 ON public.extras_webhook_content_types USING btree (webhook_id);
 ?   DROP INDEX public.extras_webhook_obj_type_webhook_id_c7bed170;
       public            netbox    false    315            ,           1259    17051    ipam_aggregate_rir_id_ef7a27bd    INDEX     [   CREATE INDEX ipam_aggregate_rir_id_ef7a27bd ON public.ipam_aggregate USING btree (rir_id);
 2   DROP INDEX public.ipam_aggregate_rir_id_ef7a27bd;
       public            netbox    false    263            -           1259    20573 !   ipam_aggregate_tenant_id_637dd1a1    INDEX     a   CREATE INDEX ipam_aggregate_tenant_id_637dd1a1 ON public.ipam_aggregate USING btree (tenant_id);
 5   DROP INDEX public.ipam_aggregate_tenant_id_637dd1a1;
       public            netbox    false    263            .           1259    19430 /   ipam_ipaddress_assigned_object_type_id_02354370    INDEX     }   CREATE INDEX ipam_ipaddress_assigned_object_type_id_02354370 ON public.ipam_ipaddress USING btree (assigned_object_type_id);
 C   DROP INDEX public.ipam_ipaddress_assigned_object_type_id_02354370;
       public            netbox    false    265            3           1259    17257 !   ipam_ipaddress_tenant_id_ac55acfd    INDEX     a   CREATE INDEX ipam_ipaddress_tenant_id_ac55acfd ON public.ipam_ipaddress USING btree (tenant_id);
 5   DROP INDEX public.ipam_ipaddress_tenant_id_ac55acfd;
       public            netbox    false    265            4           1259    17050    ipam_ipaddress_vrf_id_51fcc59b    INDEX     [   CREATE INDEX ipam_ipaddress_vrf_id_51fcc59b ON public.ipam_ipaddress USING btree (vrf_id);
 2   DROP INDEX public.ipam_ipaddress_vrf_id_51fcc59b;
       public            netbox    false    265            7           1259    17046    ipam_prefix_role_id_0a98d415    INDEX     W   CREATE INDEX ipam_prefix_role_id_0a98d415 ON public.ipam_prefix USING btree (role_id);
 0   DROP INDEX public.ipam_prefix_role_id_0a98d415;
       public            netbox    false    267            8           1259    17047    ipam_prefix_site_id_0b20df05    INDEX     W   CREATE INDEX ipam_prefix_site_id_0b20df05 ON public.ipam_prefix USING btree (site_id);
 0   DROP INDEX public.ipam_prefix_site_id_0b20df05;
       public            netbox    false    267            9           1259    17258    ipam_prefix_tenant_id_7ba1fcc4    INDEX     [   CREATE INDEX ipam_prefix_tenant_id_7ba1fcc4 ON public.ipam_prefix USING btree (tenant_id);
 2   DROP INDEX public.ipam_prefix_tenant_id_7ba1fcc4;
       public            netbox    false    267            :           1259    17048    ipam_prefix_vlan_id_1db91bff    INDEX     W   CREATE INDEX ipam_prefix_vlan_id_1db91bff ON public.ipam_prefix USING btree (vlan_id);
 0   DROP INDEX public.ipam_prefix_vlan_id_1db91bff;
       public            netbox    false    267            ;           1259    17049    ipam_prefix_vrf_id_34f78ed0    INDEX     U   CREATE INDEX ipam_prefix_vrf_id_34f78ed0 ON public.ipam_prefix USING btree (vrf_id);
 /   DROP INDEX public.ipam_prefix_vrf_id_34f78ed0;
       public            netbox    false    267            <           1259    20552    ipam_rir_name_64a71982_like    INDEX     d   CREATE INDEX ipam_rir_name_64a71982_like ON public.ipam_rir USING btree (name varchar_pattern_ops);
 /   DROP INDEX public.ipam_rir_name_64a71982_like;
       public            netbox    false    269            A           1259    20555    ipam_rir_slug_ff1a369a_like    INDEX     d   CREATE INDEX ipam_rir_slug_ff1a369a_like ON public.ipam_rir USING btree (slug varchar_pattern_ops);
 /   DROP INDEX public.ipam_rir_slug_ff1a369a_like;
       public            netbox    false    269            D           1259    20558    ipam_role_name_13784849_like    INDEX     f   CREATE INDEX ipam_role_name_13784849_like ON public.ipam_role USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.ipam_role_name_13784849_like;
       public            netbox    false    271            I           1259    20561    ipam_role_slug_309ca14c_like    INDEX     f   CREATE INDEX ipam_role_slug_309ca14c_like ON public.ipam_role USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.ipam_role_slug_309ca14c_like;
       public            netbox    false    271            �           1259    20520 #   ipam_routetarget_name_212be79f_like    INDEX     t   CREATE INDEX ipam_routetarget_name_212be79f_like ON public.ipam_routetarget USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.ipam_routetarget_name_212be79f_like;
       public            netbox    false    399            �           1259    20521 #   ipam_routetarget_tenant_id_5a0b35e8    INDEX     e   CREATE INDEX ipam_routetarget_tenant_id_5a0b35e8 ON public.ipam_routetarget USING btree (tenant_id);
 7   DROP INDEX public.ipam_routetarget_tenant_id_5a0b35e8;
       public            netbox    false    399            y           1259    17360    ipam_service_device_id_b4d2bb9c    INDEX     ]   CREATE INDEX ipam_service_device_id_b4d2bb9c ON public.ipam_service USING btree (device_id);
 3   DROP INDEX public.ipam_service_device_id_b4d2bb9c;
       public            netbox    false    285            }           1259    17374 .   ipam_service_ipaddresses_ipaddress_id_b4138c6d    INDEX     {   CREATE INDEX ipam_service_ipaddresses_ipaddress_id_b4138c6d ON public.ipam_service_ipaddresses USING btree (ipaddress_id);
 B   DROP INDEX public.ipam_service_ipaddresses_ipaddress_id_b4138c6d;
       public            netbox    false    287            �           1259    17373 ,   ipam_service_ipaddresses_service_id_ae26b9ab    INDEX     w   CREATE INDEX ipam_service_ipaddresses_service_id_ae26b9ab ON public.ipam_service_ipaddresses USING btree (service_id);
 @   DROP INDEX public.ipam_service_ipaddresses_service_id_ae26b9ab;
       public            netbox    false    287            |           1259    18144 (   ipam_service_virtual_machine_id_e8b53562    INDEX     o   CREATE INDEX ipam_service_virtual_machine_id_e8b53562 ON public.ipam_service USING btree (virtual_machine_id);
 <   DROP INDEX public.ipam_service_virtual_machine_id_e8b53562;
       public            netbox    false    285            L           1259    17227    ipam_vlan_group_id_88cbfa62    INDEX     U   CREATE INDEX ipam_vlan_group_id_88cbfa62 ON public.ipam_vlan USING btree (group_id);
 /   DROP INDEX public.ipam_vlan_group_id_88cbfa62;
       public            netbox    false    273            S           1259    17043    ipam_vlan_role_id_f5015962    INDEX     S   CREATE INDEX ipam_vlan_role_id_f5015962 ON public.ipam_vlan USING btree (role_id);
 .   DROP INDEX public.ipam_vlan_role_id_f5015962;
       public            netbox    false    273            T           1259    17044    ipam_vlan_site_id_a59334e3    INDEX     S   CREATE INDEX ipam_vlan_site_id_a59334e3 ON public.ipam_vlan USING btree (site_id);
 .   DROP INDEX public.ipam_vlan_site_id_a59334e3;
       public            netbox    false    273            U           1259    17245    ipam_vlan_tenant_id_71a8290d    INDEX     W   CREATE INDEX ipam_vlan_tenant_id_71a8290d ON public.ipam_vlan USING btree (tenant_id);
 0   DROP INDEX public.ipam_vlan_tenant_id_71a8290d;
       public            netbox    false    273            j           1259    17226    ipam_vlangroup_site_id_264f36f6    INDEX     ]   CREATE INDEX ipam_vlangroup_site_id_264f36f6 ON public.ipam_vlangroup USING btree (site_id);
 3   DROP INDEX public.ipam_vlangroup_site_id_264f36f6;
       public            netbox    false    281            o           1259    20566    ipam_vlangroup_slug_40abcf6b    INDEX     W   CREATE INDEX ipam_vlangroup_slug_40abcf6b ON public.ipam_vlangroup USING btree (slug);
 0   DROP INDEX public.ipam_vlangroup_slug_40abcf6b;
       public            netbox    false    281            p           1259    20567 !   ipam_vlangroup_slug_40abcf6b_like    INDEX     p   CREATE INDEX ipam_vlangroup_slug_40abcf6b_like ON public.ipam_vlangroup USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.ipam_vlangroup_slug_40abcf6b_like;
       public            netbox    false    281            �           1259    20535 /   ipam_vrf_export_targets_routetarget_id_8d9319f7    INDEX     }   CREATE INDEX ipam_vrf_export_targets_routetarget_id_8d9319f7 ON public.ipam_vrf_export_targets USING btree (routetarget_id);
 C   DROP INDEX public.ipam_vrf_export_targets_routetarget_id_8d9319f7;
       public            netbox    false    401            �           1259    20534 '   ipam_vrf_export_targets_vrf_id_6f4875c4    INDEX     m   CREATE INDEX ipam_vrf_export_targets_vrf_id_6f4875c4 ON public.ipam_vrf_export_targets USING btree (vrf_id);
 ;   DROP INDEX public.ipam_vrf_export_targets_vrf_id_6f4875c4;
       public            netbox    false    401            �           1259    20549 /   ipam_vrf_import_targets_routetarget_id_0e05b144    INDEX     }   CREATE INDEX ipam_vrf_import_targets_routetarget_id_0e05b144 ON public.ipam_vrf_import_targets USING btree (routetarget_id);
 C   DROP INDEX public.ipam_vrf_import_targets_routetarget_id_0e05b144;
       public            netbox    false    403            �           1259    20548 '   ipam_vrf_import_targets_vrf_id_ed491b19    INDEX     m   CREATE INDEX ipam_vrf_import_targets_vrf_id_ed491b19 ON public.ipam_vrf_import_targets USING btree (vrf_id);
 ;   DROP INDEX public.ipam_vrf_import_targets_vrf_id_ed491b19;
       public            netbox    false    403            X           1259    17045    ipam_vrf_rd_0ac1bde1_like    INDEX     `   CREATE INDEX ipam_vrf_rd_0ac1bde1_like ON public.ipam_vrf USING btree (rd varchar_pattern_ops);
 -   DROP INDEX public.ipam_vrf_rd_0ac1bde1_like;
       public            netbox    false    275            [           1259    17246    ipam_vrf_tenant_id_498b0051    INDEX     U   CREATE INDEX ipam_vrf_tenant_id_498b0051 ON public.ipam_vrf USING btree (tenant_id);
 /   DROP INDEX public.ipam_vrf_tenant_id_498b0051;
       public            netbox    false    275            .           1259    20587 /   secrets_secret_assigned_object_type_id_285b92a4    INDEX     }   CREATE INDEX secrets_secret_assigned_object_type_id_285b92a4 ON public.secrets_secret USING btree (assigned_object_type_id);
 C   DROP INDEX public.secrets_secret_assigned_object_type_id_285b92a4;
       public            netbox    false    341            3           1259    18674    secrets_secret_role_id_39d9347f    INDEX     ]   CREATE INDEX secrets_secret_role_id_39d9347f ON public.secrets_secret USING btree (role_id);
 3   DROP INDEX public.secrets_secret_role_id_39d9347f;
       public            netbox    false    341            4           1259    20590 %   secrets_secretrole_name_7b6ee7a4_like    INDEX     x   CREATE INDEX secrets_secretrole_name_7b6ee7a4_like ON public.secrets_secretrole USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.secrets_secretrole_name_7b6ee7a4_like;
       public            netbox    false    343            9           1259    20593 %   secrets_secretrole_slug_a06c885e_like    INDEX     x   CREATE INDEX secrets_secretrole_slug_a06c885e_like ON public.secrets_secretrole USING btree (slug varchar_pattern_ops);
 9   DROP INDEX public.secrets_secretrole_slug_a06c885e_like;
       public            netbox    false    343            �           1259    17803    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public            netbox    false    301            �           1259    17804    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public            netbox    false    301            �           1259    17816 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public            netbox    false    303            �           1259    17818 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     �   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public            netbox    false    303    303            �           1259    17815 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public            netbox    false    303            �           1259    17817 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public            netbox    false    303            l           1259    16580     tenancy_tenant_group_id_7daef6f4    INDEX     _   CREATE INDEX tenancy_tenant_group_id_7daef6f4 ON public.tenancy_tenant USING btree (group_id);
 4   DROP INDEX public.tenancy_tenant_group_id_7daef6f4;
       public            netbox    false    221            m           1259    20475 !   tenancy_tenant_name_f6e5b2f5_like    INDEX     p   CREATE INDEX tenancy_tenant_name_f6e5b2f5_like ON public.tenancy_tenant USING btree (name varchar_pattern_ops);
 5   DROP INDEX public.tenancy_tenant_name_f6e5b2f5_like;
       public            netbox    false    221            r           1259    20478 !   tenancy_tenant_slug_0716575e_like    INDEX     p   CREATE INDEX tenancy_tenant_slug_0716575e_like ON public.tenancy_tenant USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.tenancy_tenant_slug_0716575e_like;
       public            netbox    false    221            u           1259    20481 &   tenancy_tenantgroup_name_53363199_like    INDEX     z   CREATE INDEX tenancy_tenantgroup_name_53363199_like ON public.tenancy_tenantgroup USING btree (name varchar_pattern_ops);
 :   DROP INDEX public.tenancy_tenantgroup_name_53363199_like;
       public            netbox    false    223            x           1259    20285 &   tenancy_tenantgroup_parent_id_2542fc18    INDEX     k   CREATE INDEX tenancy_tenantgroup_parent_id_2542fc18 ON public.tenancy_tenantgroup USING btree (parent_id);
 :   DROP INDEX public.tenancy_tenantgroup_parent_id_2542fc18;
       public            netbox    false    223            {           1259    20484 &   tenancy_tenantgroup_slug_e2af1cb6_like    INDEX     z   CREATE INDEX tenancy_tenantgroup_slug_e2af1cb6_like ON public.tenancy_tenantgroup USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.tenancy_tenantgroup_slug_e2af1cb6_like;
       public            netbox    false    223            ~           1259    20286 $   tenancy_tenantgroup_tree_id_769a98bf    INDEX     g   CREATE INDEX tenancy_tenantgroup_tree_id_769a98bf ON public.tenancy_tenantgroup USING btree (tree_id);
 8   DROP INDEX public.tenancy_tenantgroup_tree_id_769a98bf;
       public            netbox    false    223            �           1259    20386 /   users_objectpermission_groups_group_id_fb7ba6e0    INDEX     }   CREATE INDEX users_objectpermission_groups_group_id_fb7ba6e0 ON public.users_objectpermission_groups USING btree (group_id);
 C   DROP INDEX public.users_objectpermission_groups_group_id_fb7ba6e0;
       public            netbox    false    393            �           1259    20385 :   users_objectpermission_groups_objectpermission_id_2f7cc117    INDEX     �   CREATE INDEX users_objectpermission_groups_objectpermission_id_2f7cc117 ON public.users_objectpermission_groups USING btree (objectpermission_id);
 N   DROP INDEX public.users_objectpermission_groups_objectpermission_id_2f7cc117;
       public            netbox    false    393            �           1259    20371 7   users_objectpermission_obj_objectpermission_id_38c7d8f5    INDEX     �   CREATE INDEX users_objectpermission_obj_objectpermission_id_38c7d8f5 ON public.users_objectpermission_object_types USING btree (objectpermission_id);
 K   DROP INDEX public.users_objectpermission_obj_objectpermission_id_38c7d8f5;
       public            netbox    false    391            �           1259    20372 ;   users_objectpermission_object_types_contenttype_id_594b1cc7    INDEX     �   CREATE INDEX users_objectpermission_object_types_contenttype_id_594b1cc7 ON public.users_objectpermission_object_types USING btree (contenttype_id);
 O   DROP INDEX public.users_objectpermission_object_types_contenttype_id_594b1cc7;
       public            netbox    false    391            �           1259    20399 9   users_objectpermission_users_objectpermission_id_78a9c2e6    INDEX     �   CREATE INDEX users_objectpermission_users_objectpermission_id_78a9c2e6 ON public.users_objectpermission_users USING btree (objectpermission_id);
 M   DROP INDEX public.users_objectpermission_users_objectpermission_id_78a9c2e6;
       public            netbox    false    395            �           1259    20400 -   users_objectpermission_users_user_id_16c0905d    INDEX     y   CREATE INDEX users_objectpermission_users_user_id_16c0905d ON public.users_objectpermission_users USING btree (user_id);
 A   DROP INDEX public.users_objectpermission_users_user_id_16c0905d;
       public            netbox    false    395            �           1259    20304    users_token_key_820deccd_like    INDEX     h   CREATE INDEX users_token_key_820deccd_like ON public.users_token USING btree (key varchar_pattern_ops);
 1   DROP INDEX public.users_token_key_820deccd_like;
       public            netbox    false    385            �           1259    20305    users_token_user_id_af964690    INDEX     W   CREATE INDEX users_token_user_id_af964690 ON public.users_token USING btree (user_id);
 0   DROP INDEX public.users_token_user_id_af964690;
       public            netbox    false    385            �           1259    17745 (   virtualization_cluster_group_id_de379828    INDEX     o   CREATE INDEX virtualization_cluster_group_id_de379828 ON public.virtualization_cluster USING btree (group_id);
 <   DROP INDEX public.virtualization_cluster_group_id_de379828;
       public            netbox    false    293            �           1259    17711 )   virtualization_cluster_name_1b59a61b_like    INDEX     �   CREATE INDEX virtualization_cluster_name_1b59a61b_like ON public.virtualization_cluster USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.virtualization_cluster_name_1b59a61b_like;
       public            netbox    false    293            �           1259    17771 '   virtualization_cluster_site_id_4d5af282    INDEX     m   CREATE INDEX virtualization_cluster_site_id_4d5af282 ON public.virtualization_cluster USING btree (site_id);
 ;   DROP INDEX public.virtualization_cluster_site_id_4d5af282;
       public            netbox    false    293            �           1259    18493 )   virtualization_cluster_tenant_id_bc2868d0    INDEX     q   CREATE INDEX virtualization_cluster_tenant_id_bc2868d0 ON public.virtualization_cluster USING btree (tenant_id);
 =   DROP INDEX public.virtualization_cluster_tenant_id_bc2868d0;
       public            netbox    false    293            �           1259    17746 '   virtualization_cluster_type_id_4efafb0a    INDEX     m   CREATE INDEX virtualization_cluster_type_id_4efafb0a ON public.virtualization_cluster USING btree (type_id);
 ;   DROP INDEX public.virtualization_cluster_type_id_4efafb0a;
       public            netbox    false    293            �           1259    20608 .   virtualization_clustergroup_name_4fcd26b4_like    INDEX     �   CREATE INDEX virtualization_clustergroup_name_4fcd26b4_like ON public.virtualization_clustergroup USING btree (name varchar_pattern_ops);
 B   DROP INDEX public.virtualization_clustergroup_name_4fcd26b4_like;
       public            netbox    false    295            �           1259    20611 .   virtualization_clustergroup_slug_57ca1d23_like    INDEX     �   CREATE INDEX virtualization_clustergroup_slug_57ca1d23_like ON public.virtualization_clustergroup USING btree (slug varchar_pattern_ops);
 B   DROP INDEX public.virtualization_clustergroup_slug_57ca1d23_like;
       public            netbox    false    295            �           1259    20614 -   virtualization_clustertype_name_ea854d3d_like    INDEX     �   CREATE INDEX virtualization_clustertype_name_ea854d3d_like ON public.virtualization_clustertype USING btree (name varchar_pattern_ops);
 A   DROP INDEX public.virtualization_clustertype_name_ea854d3d_like;
       public            netbox    false    297            �           1259    20617 -   virtualization_clustertype_slug_8ee4d0e0_like    INDEX     �   CREATE INDEX virtualization_clustertype_slug_8ee4d0e0_like ON public.virtualization_clustertype USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public.virtualization_clustertype_slug_8ee4d0e0_like;
       public            netbox    false    297            �           1259    17742 1   virtualization_virtualmachine_cluster_id_6c9f9047    INDEX     �   CREATE INDEX virtualization_virtualmachine_cluster_id_6c9f9047 ON public.virtualization_virtualmachine USING btree (cluster_id);
 E   DROP INDEX public.virtualization_virtualmachine_cluster_id_6c9f9047;
       public            netbox    false    299            �           1259    17743 2   virtualization_virtualmachine_platform_id_a6c5ccb2    INDEX     �   CREATE INDEX virtualization_virtualmachine_platform_id_a6c5ccb2 ON public.virtualization_virtualmachine USING btree (platform_id);
 F   DROP INDEX public.virtualization_virtualmachine_platform_id_a6c5ccb2;
       public            netbox    false    299            �           1259    17777 .   virtualization_virtualmachine_role_id_0cc898f9    INDEX     {   CREATE INDEX virtualization_virtualmachine_role_id_0cc898f9 ON public.virtualization_virtualmachine USING btree (role_id);
 B   DROP INDEX public.virtualization_virtualmachine_role_id_0cc898f9;
       public            netbox    false    299            �           1259    17744 0   virtualization_virtualmachine_tenant_id_d00d1d77    INDEX        CREATE INDEX virtualization_virtualmachine_tenant_id_d00d1d77 ON public.virtualization_virtualmachine USING btree (tenant_id);
 D   DROP INDEX public.virtualization_virtualmachine_tenant_id_d00d1d77;
       public            netbox    false    299            �           1259    19418 8   virtualization_vminterface_tagged_vlans_vlan_id_4e77411e    INDEX     �   CREATE INDEX virtualization_vminterface_tagged_vlans_vlan_id_4e77411e ON public.virtualization_vminterface_tagged_vlans USING btree (vlan_id);
 L   DROP INDEX public.virtualization_vminterface_tagged_vlans_vlan_id_4e77411e;
       public            netbox    false    377            �           1259    19417 ?   virtualization_vminterface_tagged_vlans_vminterface_id_904b12de    INDEX     �   CREATE INDEX virtualization_vminterface_tagged_vlans_vminterface_id_904b12de ON public.virtualization_vminterface_tagged_vlans USING btree (vminterface_id);
 S   DROP INDEX public.virtualization_vminterface_tagged_vlans_vminterface_id_904b12de;
       public            netbox    false    377            �           1259    19403 4   virtualization_vminterface_untagged_vlan_id_aea4fc69    INDEX     �   CREATE INDEX virtualization_vminterface_untagged_vlan_id_aea4fc69 ON public.virtualization_vminterface USING btree (untagged_vlan_id);
 H   DROP INDEX public.virtualization_vminterface_untagged_vlan_id_aea4fc69;
       public            netbox    false    375            �           1259    19404 6   virtualization_vminterface_virtual_machine_id_e9f89829    INDEX     �   CREATE INDEX virtualization_vminterface_virtual_machine_id_e9f89829 ON public.virtualization_vminterface USING btree (virtual_machine_id);
 J   DROP INDEX public.virtualization_vminterface_virtual_machine_id_e9f89829;
       public            netbox    false    375                       2606    16475 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          netbox    false    207    211    3659                        2606    16470 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          netbox    false    209    211    3664            �           2606    16461 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          netbox    false    207    3654    205                       2606    16490 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          netbox    false    3664    215    209                       2606    16485 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          netbox    false    213    215    3672                       2606    16504 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          netbox    false    217    3659    207                       2606    16499 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          netbox    false    213    3672    217            �           2606    18870 N   circuits_circuit circuits_circuit_provider_id_d9195418_fk_circuits_provider_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_d9195418_fk_circuits_provider_id FOREIGN KEY (provider_id) REFERENCES public.circuits_provider(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_provider_id_d9195418_fk_circuits_provider_id;
       public          netbox    false    4213    361    357            �           2606    18901 I   circuits_circuit circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id;
       public          netbox    false    357    3697    221            �           2606    18880 M   circuits_circuit circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id FOREIGN KEY (type_id) REFERENCES public.circuits_circuittype(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.circuits_circuit DROP CONSTRAINT circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id;
       public          netbox    false    357    359    4205            �           2606    20196 Z   circuits_circuittermination circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co;
       public          netbox    false    363    205    3654            �           2606    20202 O   circuits_circuittermination circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl;
       public          netbox    false    363    383    4292            �           2606    18922 Q   circuits_circuittermination circuits_circuitterm_circuit_id_257e87e7_fk_circuits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm_circuit_id_257e87e7_fk_circuits_ FOREIGN KEY (circuit_id) REFERENCES public.circuits_circuit(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuitterm_circuit_id_257e87e7_fk_circuits_;
       public          netbox    false    357    4195    363            �           2606    19092 Z   circuits_circuittermination circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id;
       public          netbox    false    365    363    4229            �           2606    18932 X   circuits_circuittermination circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.circuits_circuittermination DROP CONSTRAINT circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id;
       public          netbox    false    3876    363    261            �           2606    19542 I   dcim_cable dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id FOREIGN KEY (_termination_a_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id;
       public          netbox    false    3744    233    365            �           2606    19547 I   dcim_cable dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id FOREIGN KEY (_termination_b_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id;
       public          netbox    false    233    365    3744            �           2606    19859 @   dcim_cable dcim_cable_termination_a_type_i_a614bab8_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_i_a614bab8_fk_django_co FOREIGN KEY (termination_a_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_a_type_i_a614bab8_fk_django_co;
       public          netbox    false    205    3654    365            �           2606    19864 @   dcim_cable dcim_cable_termination_b_type_i_a91595d0_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_i_a91595d0_fk_django_co FOREIGN KEY (termination_b_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_cable DROP CONSTRAINT dcim_cable_termination_b_type_i_a91595d0_fk_django_co;
       public          netbox    false    365    205    3654            �           2606    20163 G   dcim_cablepath dcim_cablepath_destination_type_id_a8c1654b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_destination_type_id_a8c1654b_fk_django_co FOREIGN KEY (destination_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_destination_type_id_a8c1654b_fk_django_co;
       public          netbox    false    383    205    3654            �           2606    20168 B   dcim_cablepath dcim_cablepath_origin_type_id_6de54f6d_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_6de54f6d_fk_django_co FOREIGN KEY (origin_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_cablepath DROP CONSTRAINT dcim_cablepath_origin_type_id_6de54f6d_fk_django_co;
       public          netbox    false    383    205    3654                       2606    20063 K   dcim_consoleport dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co;
       public          netbox    false    225    205    3654                       2606    20131 H   dcim_consoleport dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id;
       public          netbox    false    4292    383    225                       2606    18971 D   dcim_consoleport dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id;
       public          netbox    false    225    365    4229            
           2606    18961 F   dcim_consoleport dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.dcim_consoleport DROP CONSTRAINT dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id;
       public          netbox    false    233    3744    225                       2606    19980 R   dcim_consoleporttemplate dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_consoleporttemplate DROP CONSTRAINT dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi;
       public          netbox    false    3774    237    227                       2606    20069 U   dcim_consoleserverport dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co;
       public          netbox    false    3654    205    229                       2606    19985 X   dcim_consoleserverporttemplate dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.dcim_consoleserverporttemplate DROP CONSTRAINT dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi;
       public          netbox    false    231    3774    237                       2606    20136 T   dcim_consoleserverport dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id;
       public          netbox    false    383    229    4292                       2606    18981 P   dcim_consoleserverport dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id;
       public          netbox    false    4229    229    365                       2606    18976 R   dcim_consoleserverport dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_consoleserverport DROP CONSTRAINT dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id;
       public          netbox    false    3744    233    229                       2606    17749 H   dcim_device dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id;
       public          netbox    false    233    3991    293                       2606    16806 E   dcim_device dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id FOREIGN KEY (device_role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id;
       public          netbox    false    3764    235    233                       2606    16811 E   dcim_device dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id;
       public          netbox    false    233    237    3774                       2606    16816 @   dcim_device dcim_device_platform_id_468138f1_fk_dcim_platform_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_platform_id_468138f1_fk_dcim_platform_id FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_platform_id_468138f1_fk_dcim_platform_id;
       public          netbox    false    3816    247    233                       2606    17600 D   dcim_device dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id;
       public          netbox    false    3890    233    265                       2606    17605 D   dcim_device dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id;
       public          netbox    false    233    3890    265                       2606    17475 8   dcim_device dcim_device_rack_id_23bde71f_fk_dcim_rack_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_23bde71f_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_rack_id_23bde71f_fk_dcim_rack_id;
       public          netbox    false    3857    257    233                       2606    17480 8   dcim_device dcim_device_site_id_ff897cf6_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_ff897cf6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_site_id_ff897cf6_fk_dcim_site_id;
       public          netbox    false    233    3876    261                       2606    17268 ?   dcim_device dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id;
       public          netbox    false    221    233    3697                       2606    18199 @   dcim_device dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt FOREIGN KEY (virtual_chassis_id) REFERENCES public.dcim_virtualchassis(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_device DROP CONSTRAINT dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt;
       public          netbox    false    233    4086    321            O           2606    19990 B   dcim_devicebay dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id;
       public          netbox    false    3744    233    277            N           2606    17197 L   dcim_devicebay dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id FOREIGN KEY (installed_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_devicebay DROP CONSTRAINT dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id;
       public          netbox    false    233    277    3744            P           2606    19995 P   dcim_devicebaytemplate dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_devicebaytemplate DROP CONSTRAINT dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi;
       public          netbox    false    279    237    3774                       2606    16801 E   dcim_devicetype dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_devicetype DROP CONSTRAINT dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu;
       public          netbox    false    243    237    3796            �           2606    20075 G   dcim_frontport dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co;
       public          netbox    false    3654    349    205            �           2606    19035 @   dcim_frontport dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id;
       public          netbox    false    4229    365    349            �           2606    18802 B   dcim_frontport dcim_frontport_device_id_950557b5_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_950557b5_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_device_id_950557b5_fk_dcim_device_id;
       public          netbox    false    233    3744    349            �           2606    18765 G   dcim_frontport dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearport(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_frontport DROP CONSTRAINT dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id;
       public          netbox    false    349    4188    353            �           2606    20000 P   dcim_frontporttemplate dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi;
       public          netbox    false    351    237    3774            �           2606    18760 N   dcim_frontporttemplate dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearporttemplate(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.dcim_frontporttemplate DROP CONSTRAINT dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear;
       public          netbox    false    355    4193    351            #           2606    20081 G   dcim_interface dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co;
       public          netbox    false    205    239    3654            $           2606    20141 D   dcim_interface dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id;
       public          netbox    false    383    4292    239            "           2606    19030 @   dcim_interface dcim_interface_cable_id_1b264edb_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_cable_id_1b264edb_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_cable_id_1b264edb_fk_dcim_cable_id;
       public          netbox    false    4229    365    239            !           2606    19936 B   dcim_interface dcim_interface_device_id_359c6115_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_359c6115_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_device_id_359c6115_fk_dcim_device_id;
       public          netbox    false    3744    233    239                       2606    17610 B   dcim_interface dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id FOREIGN KEY (lag_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id;
       public          netbox    false    3785    239    239            o           2606    18170 S   dcim_interface_tagged_vlans dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte FOREIGN KEY (interface_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte;
       public          netbox    false    239    3785    319            p           2606    18175 X   dcim_interface_tagged_vlans dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.dcim_interface_tagged_vlans DROP CONSTRAINT dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id;
       public          netbox    false    319    3922    273                        2606    18229 G   dcim_interface dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_interface DROP CONSTRAINT dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id;
       public          netbox    false    3922    273    239            %           2606    20005 P   dcim_interfacetemplate dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_interfacetemplate DROP CONSTRAINT dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi;
       public          netbox    false    3774    241    237            '           2606    20010 J   dcim_inventoryitem dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id;
       public          netbox    false    3744    233    245            &           2606    17548 K   dcim_inventoryitem dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu;
       public          netbox    false    3796    243    245            (           2606    20056 Q   dcim_inventoryitem dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id FOREIGN KEY (parent_id) REFERENCES public.dcim_inventoryitem(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_inventoryitem DROP CONSTRAINT dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id;
       public          netbox    false    245    245    3810            )           2606    18234 L   dcim_platform dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_platform DROP CONSTRAINT dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id;
       public          netbox    false    247    3796    243            �           2606    20087 G   dcim_powerfeed dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co;
       public          netbox    false    205    3654    379            �           2606    20146 D   dcim_powerfeed dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id;
       public          netbox    false    379    383    4292            �           2606    19512 @   dcim_powerfeed dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id;
       public          netbox    false    379    365    4229            �           2606    19463 K   dcim_powerfeed dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id FOREIGN KEY (power_panel_id) REFERENCES public.dcim_powerpanel(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id;
       public          netbox    false    379    381    4282            �           2606    19468 >   dcim_powerfeed dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_powerfeed DROP CONSTRAINT dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id;
       public          netbox    false    379    3857    257            -           2606    20093 K   dcim_poweroutlet dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co;
       public          netbox    false    205    3654    249            .           2606    20151 H   dcim_poweroutlet dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id;
       public          netbox    false    249    383    4292            ,           2606    19011 D   dcim_poweroutlet dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id;
       public          netbox    false    4229    365    249            +           2606    19006 F   dcim_poweroutlet dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id;
       public          netbox    false    249    3744    233            *           2606    19501 M   dcim_poweroutlet dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerport(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.dcim_poweroutlet DROP CONSTRAINT dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id;
       public          netbox    false    253    249    3842            0           2606    20015 R   dcim_poweroutlettemplate dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi;
       public          netbox    false    237    251    3774            /           2606    19507 Q   dcim_poweroutlettemplate dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerporttemplate(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_poweroutlettemplate DROP CONSTRAINT dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe;
       public          netbox    false    251    255    3847            �           2606    19518 K   dcim_powerpanel dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id FOREIGN KEY (rack_group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id;
       public          netbox    false    381    259    3863            �           2606    19523 @   dcim_powerpanel dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerpanel DROP CONSTRAINT dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id;
       public          netbox    false    3876    381    261            1           2606    20099 G   dcim_powerport dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co;
       public          netbox    false    253    3654    205            4           2606    20156 D   dcim_powerport dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id;
       public          netbox    false    253    383    4292            3           2606    19001 @   dcim_powerport dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id;
       public          netbox    false    365    253    4229            2           2606    18991 B   dcim_powerport dcim_powerport_device_id_ef7185ae_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_ef7185ae_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.dcim_powerport DROP CONSTRAINT dcim_powerport_device_id_ef7185ae_fk_dcim_device_id;
       public          netbox    false    233    253    3744            5           2606    20020 P   dcim_powerporttemplate dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.dcim_powerporttemplate DROP CONSTRAINT dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi;
       public          netbox    false    237    3774    255            6           2606    16791 :   dcim_rack dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id FOREIGN KEY (group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id;
       public          netbox    false    257    259    3863            9           2606    17307 8   dcim_rack dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id FOREIGN KEY (role_id) REFERENCES public.dcim_rackrole(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id;
       public          netbox    false    3957    283    257            7           2606    16796 4   dcim_rack dcim_rack_site_id_403c7b3a_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_site_id_403c7b3a_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_site_id_403c7b3a_fk_dcim_site_id;
       public          netbox    false    261    3876    257            8           2606    17273 ;   dcim_rack dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.dcim_rack DROP CONSTRAINT dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id;
       public          netbox    false    257    3697    221            ;           2606    19890 E   dcim_rackgroup dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id FOREIGN KEY (parent_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id;
       public          netbox    false    259    3863    259            :           2606    16786 >   dcim_rackgroup dcim_rackgroup_site_id_13520e89_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_13520e89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_rackgroup DROP CONSTRAINT dcim_rackgroup_site_id_13520e89_fk_dcim_site_id;
       public          netbox    false    3876    261    259            V           2606    17528 J   dcim_rackreservation dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id;
       public          netbox    false    3857    289    257            X           2606    18183 Q   dcim_rackreservation dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id;
       public          netbox    false    289    221    3697            W           2606    18149 J   dcim_rackreservation dcim_rackreservation_user_id_0785a527_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_user_id_0785a527_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.dcim_rackreservation DROP CONSTRAINT dcim_rackreservation_user_id_0785a527_fk_auth_user_id;
       public          netbox    false    289    3672    213            �           2606    20105 E   dcim_rearport dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co;
       public          netbox    false    3654    205    353            �           2606    19040 >   dcim_rearport dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id;
       public          netbox    false    365    353    4229            �           2606    18808 @   dcim_rearport dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.dcim_rearport DROP CONSTRAINT dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id;
       public          netbox    false    3744    353    233            �           2606    20025 O   dcim_rearporttemplate dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.dcim_rearporttemplate DROP CONSTRAINT dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi;
       public          netbox    false    237    3774    355            Y           2606    17512 <   dcim_region dcim_region_parent_id_2486f5d4_fk_dcim_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_parent_id_2486f5d4_fk_dcim_region_id FOREIGN KEY (parent_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.dcim_region DROP CONSTRAINT dcim_region_parent_id_2486f5d4_fk_dcim_region_id;
       public          netbox    false    291    291    3981            =           2606    17507 8   dcim_site dcim_site_region_id_45210932_fk_dcim_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_region_id_45210932_fk_dcim_region_id FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_region_id_45210932_fk_dcim_region_id;
       public          netbox    false    261    291    3981            <           2606    17278 ;   dcim_site dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.dcim_site DROP CONSTRAINT dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id;
       public          netbox    false    221    261    3697            q           2606    19942 L   dcim_virtualchassis dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id FOREIGN KEY (master_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.dcim_virtualchassis DROP CONSTRAINT dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id;
       public          netbox    false    321    233    3744                       2606    16523 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          netbox    false    3654    205    219                       2606    16528 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          netbox    false    213    219    3672            �           2606    19308 S   extras_configcontext_clusters extras_configcontext_cluster_id_6abd47a1_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_cluster_id_6abd47a1_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_cluster_id_6abd47a1_fk_virtualiz;
       public          netbox    false    3991    373    293            �           2606    19294 ^   extras_configcontext_cluster_groups extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz FOREIGN KEY (clustergroup_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz;
       public          netbox    false    295    371    3999            r           2606    18363 Z   extras_configcontext_platforms extras_configcontext_configcontext_id_2a516699_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_configcontext_id_2a516699_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_configcontext_id_2a516699_fk_extras_co;
       public          netbox    false    323    325    4091            v           2606    18391 V   extras_configcontext_roles extras_configcontext_configcontext_id_59b67386_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_configcontext_id_59b67386_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_configcontext_id_59b67386_fk_extras_co;
       public          netbox    false    323    329    4091            �           2606    19224 U   extras_configcontext_tags extras_configcontext_configcontext_id_64a392b1_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_configcontext_id_64a392b1_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_configcontext_id_64a392b1_fk_extras_co;
       public          netbox    false    323    369    4091            t           2606    18377 X   extras_configcontext_regions extras_configcontext_configcontext_id_73003dbc_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_configcontext_id_73003dbc_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_configcontext_id_73003dbc_fk_extras_co;
       public          netbox    false    327    323    4091            x           2606    18405 V   extras_configcontext_sites extras_configcontext_configcontext_id_8c54feb9_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_configcontext_id_8c54feb9_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_configcontext_id_8c54feb9_fk_extras_co;
       public          netbox    false    4091    331    323            �           2606    19289 _   extras_configcontext_cluster_groups extras_configcontext_configcontext_id_8f50b794_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_8f50b794_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_cluster_groups DROP CONSTRAINT extras_configcontext_configcontext_id_8f50b794_fk_extras_co;
       public          netbox    false    323    371    4091            z           2606    18419 ^   extras_configcontext_tenant_groups extras_configcontext_configcontext_id_92f68345_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_92f68345_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_configcontext_id_92f68345_fk_extras_co;
       public          netbox    false    333    323    4091            |           2606    18433 X   extras_configcontext_tenants extras_configcontext_configcontext_id_b53552a6_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_configcontext_id_b53552a6_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_configcontext_id_b53552a6_fk_extras_co;
       public          netbox    false    4091    323    335            �           2606    19303 Y   extras_configcontext_clusters extras_configcontext_configcontext_id_ed579a40_fk_extras_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_configcontext_id_ed579a40_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_clusters DROP CONSTRAINT extras_configcontext_configcontext_id_ed579a40_fk_extras_co;
       public          netbox    false    323    373    4091            w           2606    18396 S   extras_configcontext_roles extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi FOREIGN KEY (devicerole_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.extras_configcontext_roles DROP CONSTRAINT extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi;
       public          netbox    false    329    3764    235            s           2606    18368 U   extras_configcontext_platforms extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.extras_configcontext_platforms DROP CONSTRAINT extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat;
       public          netbox    false    3816    247    325            u           2606    18382 Q   extras_configcontext_regions extras_configcontext_region_id_35c6ba9d_fk_dcim_regi    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_region_id_35c6ba9d_fk_dcim_regi FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_configcontext_regions DROP CONSTRAINT extras_configcontext_region_id_35c6ba9d_fk_dcim_regi;
       public          netbox    false    327    291    3981            y           2606    18410 V   extras_configcontext_sites extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_sites DROP CONSTRAINT extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id;
       public          netbox    false    3876    261    331            �           2606    19229 T   extras_configcontext_tags extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.extras_configcontext_tags DROP CONSTRAINT extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id;
       public          netbox    false    337    369    4132            }           2606    18438 Q   extras_configcontext_tenants extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_configcontext_tenants DROP CONSTRAINT extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t;
       public          netbox    false    335    3697    221            {           2606    18424 \   extras_configcontext_tenant_groups extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t FOREIGN KEY (tenantgroup_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_configcontext_tenant_groups DROP CONSTRAINT extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t;
       public          netbox    false    333    3706    223            g           2606    20450 Z   extras_customfield_content_types extras_customfield_c_contenttype_id_2997ba90_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_contenttype_id_2997ba90_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_c_contenttype_id_2997ba90_fk_django_co;
       public          netbox    false    309    3654    205            h           2606    20455 Z   extras_customfield_content_types extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu FOREIGN KEY (customfield_id) REFERENCES public.extras_customfield(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_customfield_content_types DROP CONSTRAINT extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu;
       public          netbox    false    307    309    4048            �           2606    19338 I   extras_customlink extras_customlink_content_type_id_4d35b063_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_content_type_id_4d35b063_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.extras_customlink DROP CONSTRAINT extras_customlink_content_type_id_4d35b063_fk_django_co;
       public          netbox    false    367    205    3654            f           2606    19343 P   extras_exporttemplate extras_exporttemplat_content_type_id_59737e21_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplat_content_type_id_59737e21_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.extras_exporttemplate DROP CONSTRAINT extras_exporttemplat_content_type_id_59737e21_fk_django_co;
       public          netbox    false    3654    305    205            i           2606    18003 Q   extras_imageattachment extras_imageattachme_content_type_id_90e0643d_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachme_content_type_id_90e0643d_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.extras_imageattachment DROP CONSTRAINT extras_imageattachme_content_type_id_90e0643d_fk_django_co;
       public          netbox    false    205    3654    311            �           2606    20431 P   extras_jobresult extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id FOREIGN KEY (obj_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id;
       public          netbox    false    205    397    3654            �           2606    20436 B   extras_jobresult extras_jobresult_user_id_d35285ab_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_user_id_d35285ab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.extras_jobresult DROP CONSTRAINT extras_jobresult_user_id_d35285ab_fk_auth_user_id;
       public          netbox    false    397    213    3672            l           2606    18116 R   extras_objectchange extras_objectchange_changed_object_type__b755bb60_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_changed_object_type__b755bb60_fk_django_co FOREIGN KEY (changed_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_changed_object_type__b755bb60_fk_django_co;
       public          netbox    false    3654    317    205            m           2606    18121 R   extras_objectchange extras_objectchange_related_object_type__fe6e521f_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_related_object_type__fe6e521f_fk_django_co FOREIGN KEY (related_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_related_object_type__fe6e521f_fk_django_co;
       public          netbox    false    3654    205    317            n           2606    18126 H   extras_objectchange extras_objectchange_user_id_7fdf8186_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_user_id_7fdf8186_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.extras_objectchange DROP CONSTRAINT extras_objectchange_user_id_7fdf8186_fk_auth_user_id;
       public          netbox    false    3672    317    213            ~           2606    18475 I   extras_taggeditem extras_taggeditem_content_type_id_ba5562ed_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_content_type_id_ba5562ed_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_content_type_id_ba5562ed_fk_django_co;
       public          netbox    false    339    205    3654                       2606    18480 D   extras_taggeditem extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.extras_taggeditem DROP CONSTRAINT extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id;
       public          netbox    false    337    4132    339            j           2606    20463 V   extras_webhook_content_types extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co;
       public          netbox    false    3654    315    205            k           2606    20468 R   extras_webhook_content_types extras_webhook_conte_webhook_id_0c169800_fk_extras_we    FK CONSTRAINT     �   ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_webhook_id_0c169800_fk_extras_we FOREIGN KEY (webhook_id) REFERENCES public.extras_webhook(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.extras_webhook_content_types DROP CONSTRAINT extras_webhook_conte_webhook_id_0c169800_fk_extras_we;
       public          netbox    false    4064    315    313            >           2606    17391 <   ipam_aggregate ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id FOREIGN KEY (rir_id) REFERENCES public.ipam_rir(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id;
       public          netbox    false    3904    263    269            ?           2606    20568 E   ipam_aggregate ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.ipam_aggregate DROP CONSTRAINT ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id;
       public          netbox    false    221    263    3697            A           2606    19425 H   ipam_ipaddress ipam_ipaddress_assigned_object_type_02354370_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_assigned_object_type_02354370_fk_django_co FOREIGN KEY (assigned_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_assigned_object_type_02354370_fk_django_co;
       public          netbox    false    205    3654    265            B           2606    17396 I   ipam_ipaddress ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id FOREIGN KEY (nat_inside_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id;
       public          netbox    false    265    3890    265            @           2606    17247 E   ipam_ipaddress ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id;
       public          netbox    false    221    265    3697            C           2606    17401 <   ipam_ipaddress ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.ipam_ipaddress DROP CONSTRAINT ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id;
       public          netbox    false    275    265    3927            F           2606    17406 8   ipam_prefix ipam_prefix_role_id_0a98d415_fk_ipam_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_role_id_0a98d415_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_role_id_0a98d415_fk_ipam_role_id;
       public          netbox    false    3912    271    267            D           2606    16993 8   ipam_prefix ipam_prefix_site_id_0b20df05_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_site_id_0b20df05_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_site_id_0b20df05_fk_dcim_site_id;
       public          netbox    false    267    3876    261            E           2606    17252 ?   ipam_prefix ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id;
       public          netbox    false    3697    267    221            G           2606    17411 8   ipam_prefix ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id;
       public          netbox    false    267    3922    273            H           2606    17416 6   ipam_prefix ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.ipam_prefix DROP CONSTRAINT ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id;
       public          netbox    false    275    3927    267            �           2606    20515 I   ipam_routetarget ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ipam_routetarget DROP CONSTRAINT ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id;
       public          netbox    false    221    3697    399            S           2606    18139 >   ipam_service ipam_service_device_id_b4d2bb9c_fk_dcim_device_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_device_id_b4d2bb9c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_device_id_b4d2bb9c_fk_dcim_device_id;
       public          netbox    false    233    285    3744            T           2606    17426 P   ipam_service_ipaddresses ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad FOREIGN KEY (ipaddress_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad;
       public          netbox    false    3890    265    287            U           2606    17431 X   ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id FOREIGN KEY (service_id) REFERENCES public.ipam_service(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ipam_service_ipaddresses DROP CONSTRAINT ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id;
       public          netbox    false    287    285    3963            R           2606    18134 B   ipam_service ipam_service_virtual_machine_id_e8b53562_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_virtual_machine_id_e8b53562_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.ipam_service DROP CONSTRAINT ipam_service_virtual_machine_id_e8b53562_fk_virtualiz;
       public          netbox    false    4015    285    299            J           2606    17210 :   ipam_vlan ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id FOREIGN KEY (group_id) REFERENCES public.ipam_vlangroup(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id;
       public          netbox    false    281    273    3945            I           2606    17033 4   ipam_vlan ipam_vlan_role_id_f5015962_fk_ipam_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_role_id_f5015962_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_role_id_f5015962_fk_ipam_role_id;
       public          netbox    false    3912    271    273            L           2606    17381 4   ipam_vlan ipam_vlan_site_id_a59334e3_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_site_id_a59334e3_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_site_id_a59334e3_fk_dcim_site_id;
       public          netbox    false    273    261    3876            K           2606    17235 ;   ipam_vlan ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.ipam_vlan DROP CONSTRAINT ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id;
       public          netbox    false    221    273    3697            Q           2606    17386 >   ipam_vlangroup ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.ipam_vlangroup DROP CONSTRAINT ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id;
       public          netbox    false    3876    261    281            �           2606    20529 Q   ipam_vrf_export_targets ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout;
       public          netbox    false    399    401    4333            �           2606    20524 N   ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.ipam_vrf_export_targets DROP CONSTRAINT ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id;
       public          netbox    false    3927    401    275            �           2606    20543 Q   ipam_vrf_import_targets ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout;
       public          netbox    false    403    399    4333            �           2606    20538 N   ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.ipam_vrf_import_targets DROP CONSTRAINT ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id;
       public          netbox    false    3927    403    275            M           2606    17240 9   ipam_vrf ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.ipam_vrf DROP CONSTRAINT ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id;
       public          netbox    false    221    275    3697            �           2606    20582 H   secrets_secret secrets_secret_assigned_object_type_285b92a4_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_assigned_object_type_285b92a4_fk_django_co FOREIGN KEY (assigned_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_assigned_object_type_285b92a4_fk_django_co;
       public          netbox    false    3654    341    205            �           2606    18626 G   secrets_secret secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.secrets_secret
    ADD CONSTRAINT secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id FOREIGN KEY (role_id) REFERENCES public.secrets_secretrole(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.secrets_secret DROP CONSTRAINT secrets_secret_role_id_39d9347f_fk_secrets_secretrole_id;
       public          netbox    false    343    4152    341            �           2606    18693 O   secrets_sessionkey secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.secrets_sessionkey
    ADD CONSTRAINT secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id FOREIGN KEY (userkey_id) REFERENCES public.secrets_userkey(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.secrets_sessionkey DROP CONSTRAINT secrets_sessionkey_userkey_id_3ca6176b_fk_secrets_userkey_id;
       public          netbox    false    345    347    4157            �           2606    18686 @   secrets_userkey secrets_userkey_user_id_13ada46b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.secrets_userkey
    ADD CONSTRAINT secrets_userkey_user_id_13ada46b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.secrets_userkey DROP CONSTRAINT secrets_userkey_user_id_13ada46b_fk_auth_user_id;
       public          netbox    false    213    345    3672            d           2606    17805 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public          netbox    false    3654    303    205            e           2606    17810 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public          netbox    false    301    4027    303                       2606    16581 I   tenancy_tenant tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id FOREIGN KEY (group_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.tenancy_tenant DROP CONSTRAINT tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id;
       public          netbox    false    223    3706    221            	           2606    20272 G   tenancy_tenantgroup tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t FOREIGN KEY (parent_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.tenancy_tenantgroup DROP CONSTRAINT tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t;
       public          netbox    false    223    3706    223            �           2606    20366 ]   users_objectpermission_object_types users_objectpermissi_contenttype_id_594b1cc7_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_contenttype_id_594b1cc7_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermissi_contenttype_id_594b1cc7_fk_django_co;
       public          netbox    false    205    391    3654            �           2606    20380 Q   users_objectpermission_groups users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou;
       public          netbox    false    393    209    3664            �           2606    20375 \   users_objectpermission_groups users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_objectpermission_groups DROP CONSTRAINT users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj;
       public          netbox    false    4304    393    389            �           2606    20361 b   users_objectpermission_object_types users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_objectpermission_object_types DROP CONSTRAINT users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj;
       public          netbox    false    4304    391    389            �           2606    20389 [   users_objectpermission_users users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj;
       public          netbox    false    389    395    4304            �           2606    20394 Z   users_objectpermission_users users_objectpermission_users_user_id_16c0905d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_user_id_16c0905d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_objectpermission_users DROP CONSTRAINT users_objectpermission_users_user_id_16c0905d_fk_auth_user_id;
       public          netbox    false    213    3672    395            �           2606    20299 8   users_token users_token_user_id_af964690_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_user_id_af964690_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.users_token DROP CONSTRAINT users_token_user_id_af964690_fk_auth_user_id;
       public          netbox    false    213    3672    385            �           2606    20319 B   users_userconfig users_userconfig_user_id_afd44184_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_userconfig
    ADD CONSTRAINT users_userconfig_user_id_afd44184_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.users_userconfig DROP CONSTRAINT users_userconfig_user_id_afd44184_fk_auth_user_id;
       public          netbox    false    213    3672    387            Z           2606    17701 J   virtualization_cluster virtualization_clust_group_id_de379828_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_group_id_de379828_fk_virtualiz FOREIGN KEY (group_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_clust_group_id_de379828_fk_virtualiz;
       public          netbox    false    3999    293    295            [           2606    17706 I   virtualization_cluster virtualization_clust_type_id_4efafb0a_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_type_id_4efafb0a_fk_virtualiz FOREIGN KEY (type_id) REFERENCES public.virtualization_clustertype(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_clust_type_id_4efafb0a_fk_virtualiz;
       public          netbox    false    297    293    4007            \           2606    17766 N   virtualization_cluster virtualization_cluster_site_id_4d5af282_fk_dcim_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_site_id_4d5af282_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_site_id_4d5af282_fk_dcim_site_id;
       public          netbox    false    261    3876    293            ]           2606    18488 U   virtualization_cluster virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.virtualization_cluster DROP CONSTRAINT virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id;
       public          netbox    false    3697    221    293            ^           2606    17716 S   virtualization_virtualmachine virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz;
       public          netbox    false    293    299    3991            _           2606    17721 T   virtualization_virtualmachine virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat;
       public          netbox    false    299    247    3816            `           2606    17726 W   virtualization_virtualmachine virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad;
       public          netbox    false    299    3890    265            a           2606    17731 W   virtualization_virtualmachine virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad;
       public          netbox    false    299    265    3890            c           2606    17778 P   virtualization_virtualmachine virtualization_virtu_role_id_0cc898f9_fk_dcim_devi    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_role_id_0cc898f9_fk_dcim_devi FOREIGN KEY (role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_role_id_0cc898f9_fk_dcim_devi;
       public          netbox    false    299    235    3764            b           2606    17736 R   virtualization_virtualmachine virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.virtualization_virtualmachine DROP CONSTRAINT virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t;
       public          netbox    false    221    3697    299            �           2606    19393 V   virtualization_vminterface virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan;
       public          netbox    false    273    375    3922            �           2606    19398 X   virtualization_vminterface virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_vminterface DROP CONSTRAINT virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz;
       public          netbox    false    4015    375    299            �           2606    19412 Z   virtualization_vminterface_tagged_vlans virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan;
       public          netbox    false    377    3922    273            �           2606    19407 a   virtualization_vminterface_tagged_vlans virtualization_vmint_vminterface_id_904b12de_fk_virtualiz    FK CONSTRAINT     �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vminterface_id_904b12de_fk_virtualiz FOREIGN KEY (vminterface_id) REFERENCES public.virtualization_vminterface(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans DROP CONSTRAINT virtualization_vmint_vminterface_id_904b12de_fk_virtualiz;
       public          netbox    false    377    4263    375            B      x������ � �      D      x������ � �      @     x����n�8�����,��r1�.X,�\-�p'J�Ӊ�N���K��X�P��U���اhY�����x�;><�=_����m����
��n#s��x~��6'�H>���-#���>���sk�SCr�://���t9W��yK=�A&�!�zdXM�w��F� �ӧ���Z5c4/�f��ޔi�WbԒ2��IDt��]r�v��������uӣ�VB��5 ���o���wJ�~9��/xw�x��f]h��T7{4��j����#
ڝ[��h��&9����i��[���k�(�S����Tt�����S"Z���-Mx�T'��������Z{�7Ǿ~���pw��/U"��д���.3���Ix�yBܽ%�%��Մ���?-�o�[~�8���h�d3�8� �l�y ��+c�ܕ̿0C�Z�~ݾ`/��Q���$`�Q��6����lx].劉��l	v]���ق�H�$m�M$�r��&j؎����5�&]���8�$͆�Sq�I��;����'-��<��z�<�!�,���%umZ[�a�-����|�������|K*Ҷ�:�]��_^���0�ܿu�C�Y$�F�0|}�6F���+��]=m������x��tȠ�{bA�Q�8�b��n.K1V6)��X�9���E��Y���\��A�ٸ���:>�a�����a~?݇zD���GZ�ѐ����)��(Xu���8dn�`�j'�����nk+��M�f�/�dR�67�`p+h�;�ml��&6��ƒc���c�ɱ��Ʊ��XP_N��\��w��/]��>rjP�tDզ�{�k�E���C������-z&e���]1
��/�ER�Ѕ�}/��[軽-��褴ƶzO���+(+s�F�
�М�!0�ٺ��xY^�N
�����Y]�H�Q$�.K$�'rR�%�3���#,���[��JǵIZ��f�M�)73��"ə�b٩��'S����l:�?���ۈ��EF���1}B�ە����y��7��c��|�k��*��)�m�R#Q���+�
N!��3�8���6��S9��q�|_���)H=ߗ�����TZ�_7|�d��"�ᆨUE ��v��#z��ɇ]��G���C��ipg���MF��\��֡��s��d�~;����;���* g6��٤U���G�a9G��(�&BS>1M��АP�Be"d^�� ��=�����ԍ6���u#����݈9R�rFI���t�%f�mR+�0����Xba*+�%["�DV.˺%�H�IA�s��4��dh���l̔)���t�<K��)�R��U (S�� �lu��*�'_�5C��}�Ϸ��!��}������Ʀ�
�\��^Veo�J�.����5Z�³����ގϫ���t�z�#�Y[��ҹ Ҁ6:��NC�� ���F���\�7�$sc�	|F��0�.��aH^B�]��S_���=���_�h�(@>��!y��R|$�HA�}��х*4�di`���f�lJocGJp 5��l]Bx����d������+�A�, ���HJ�Nȏ_�����z�� �;TS�ϻ��2��X�9 S �Xc��8�U�x��6�/1����|�J4�J��+�^w+������s�Opg���p�`��P�p�x�wP~s�h�YPv�_;��oU���|m�~�'{���?�8	�ƃ&f}6(�Yx|z
;p�ʲ����Q��^�,#X�"YEht��gѯ����*�Z���^�!p�N�Z% 4��V 	Ƭ��@B�-���g5h�ū�����)ƹ����N1L��:E<�������ZNK���^[D#@���-���nYc'�Gk�=H�#�5�X�}� ��(b_�"-�� ��g�������A6����9t�ܶ~���m��S��<6@*'������T�lo��c�	�����9��}y`Zj�|u�<P�z�>�i�n��Fa0�n�q�����4DF�,]�Q�g$äo~�ˀ�l*��a �Z ӻ��L_�0g�[|eby�oհ��ڤ)�٤f<MnTds�i����)ϼN}�=�\���Ks�ZZ>)�4���r���`6:H��*���@e�v�]^�O��C5ʮ m�)�\fe������+SخK
,�2^v^�=3O/�u_�ݎ��^��c5�n۽�n�,�$�=n���-)m��(!{K:��6*����o���j�=G/B���� e2�j�A�d��C�<�/_���o�ec�Fi4��F�V3e�F��Y�#E ��Y���I^��~�ޞ�Vm|�H?��C|R�O�3�?�'?��4�H��n�8��u���1�lޮ��(@�z�8��u}���q�߯k�O_�G0���o؍#�s��W��q�]�o��B�|:��>�·��/�{Ӳ��PX���EO�q��K���D�~9��� ��\��
$ƶv���@�lcW�"�m�<���
-��ͩ6?o0&�1(��,�N�3���@τ?._�3ܷ��[6��"���`T�!M9´zD��hIϞ�|���c�i��^�-%8��5�(WK��b�"i��H�9���[rW0�[k	&�[��'�ʏ��D�ce=3�w����Ԧ���e`(9S�NR~ �6�'�E�Nm����w��,��mpS�K�g����{�F�{�|>�be��Q��;Kbl-7�����n�2	��ېC�Ho��|��8Y4E���
rk�6��<7�3�v�>��I���"tS:%*D9� 3�$NBď�-�Y'�o��8/��~�V�������)) ���r�$�\RQ��%IJ�$������l�Ǉ���w|@�0;xC��)�v�$�Q�����ƹ�n.��IǇ�5�|4W�)��\)������ �wP��u|��
��I��n$��Dx
G��I U�s��B�{}�\.��SV�%��6�fK l�I���)w�+þE:O�?�l�4��_װk���
��fE|-t�a�'|ޑ��*�R�� T�o�����>9~	�קs�{|r��AQ|r"~r��c��c���
��N=�;��轿�K�]v��A4�n m։�`�0���[]����q�      F   �   x�m�MO�@���+<p#%��²ۤ��+IL�- R���⯗ƛz�I&�<���$��6�`2��Nwl������X�����I���{Vc�?ˇ�짧 ��M�لv����t���+K�K��-B9�ƨC2�>j�~�:=��T��᳚���L����[���A����n_RUk�-��l��J�s!�!��Hz�C����nõ�G��Wh��:i�q&�����%6t��v��(�S{RO      H      x������ � �      J      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      R      x������ � �      T      x������ � �      V      x������ � �      X      x������ � �      Z      x������ � �      �      x������ � �      �      x������ � �      \      x������ � �      ^      x������ � �      �      x������ � �      �      x������ � �      `      x������ � �      �      x������ � �      b      x������ � �      f      x������ � �      d      x������ � �      h      x������ � �      �      x������ � �      j      x������ � �      l      x������ � �      �      x������ � �      n      x������ � �      p      x������ � �      r      x������ � �      t      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      v      x������ � �      �      x������ � �      L   �   x�]̽
�0@���)JVi�?���J��Q�J3t(}w#���Y�G��Ң�tj�#�(�D���>�	��^�i�e����u�-5{�J���v��| 2��
F�p��>,C�t�k���T���?;c���&6      >   �  x�uT۶� }&3� ���y���S����� Zm��"f'�BI��4�x;�ɺ ���-�%E���]~ �@dH��\'i�kf����Q�5P�E�0�A�K Y���9��5!ţ��8%s�2�j�2���I�F�dͺU�F���b2�^��@�s��)��}̊�걪	h��� ZGb^�I�� �L�J���D��{���^�:���X�I[���O�.�Ŝ��h"���B����Eu$ȡ������>�kSFifT��aJ��4��`��{x�]�N���
��3�Z�������|@Q�!����*U�O ����m��$����n�#5������\%���o�����[�����H����`��
�L�$G��IF'���-�AЌLNu��e�i�X�#�ga�!V�u �]��UF"U�]�z�3���.8ooQ�_�,O���}�c���BI7T��W2�\G����U���7(��������?[��>��;:_aY����kN�6��@�8=��gI?����C��,4N��P�7$�[�'W�M=�*�ia$��)�4�|�C��&Te�u؛2PU��� ��K[o�v>bi�է�tvaM�Wt3 A����Q��:퓚l�,��tm�� �wG0      <      x��\�r۸�}�|�y?�U��o9U,Z�e&�%y���g�A��������ht��@�e{:^������_^���p�C���T�i���!���o�l�ވ�m���Kw�~<�0M�!
����0��P6hE�,"��i�u��۱?�>�j���:�v�%3c�rm���c���v���4l��*�QƘ�e�iKN��h�ߴ���ס��VG(��'�n���܏��r�K�����������
�L�U��J1�����n�?D�¹t�!��%�/-�t����{�D�dSb��5�~��n��CZȴ!2��v��cVo�{��bT#�l�����퇷�z/���q<����\�����FXKp*���v��6A��tF
�t����Ӣ�%�ڍ���9��#�aD{;CE}{O�~���H&(�9Y��}�ݖ�֒����;n?vVE���l�W�L{X���.y���P��8lOo}���n���HK���m;/�76$�$��p���F�Ed�9��)�O㶏��Vw<A�F%&u^�$*a捕�{�.-6�*���&K���oaN+��HK�m��.��/��RC�$���YH���5� iאC�>ۤ����>:��񟭂� �Q��M���wSE��R�j2��8�<�P:8�������l�|�mw9����|�u��H r��E�v�������}VΥ��yl�Y�H��f�Tm�SR��;��W�8bc����u�$�E٤���up6	�d��qH��u�0F{�n��YڦkW�vA��.�7t�.�;c�>��y{��G0V���V>��	f�U ��o�X��t�!��/�s���*���!��n&yX�,����X��j��<\�#-��h�aL�<\�]"��H���l���/q�s7F#<����5�H�S�� �Z����d�N��5�����y�� �e-�9D���d�:�I�i����ު1�*X�JgG)�,~�Y���Le�08φt�=�����vۓ���qW��]�E����+O��y�FN[ȮR���K�*�nW��Z�t&;J�c�o;<srW�>�d')��.��P��AL��ɦ(EZ��;���n��g]�s|6�O��=(fd?�iܽV���N�t��т��s%'����d�{e�1]�ө��F����d�'tq��_p�����h�HG>�d'���O��>���T4�t�z0�'8���A�d�뜗�sE�;G�����O�U^D��x\�c7T݆��������J��=�\�ˁ��;ۜ&����:xt�[��>�t�v�=S�`��R$���0�pf��ė��v������P���ǽ�E���sl�~�/XVZn�:FP�J6�>����$��gJ��g5]F�=�j
��=��Km��D�mv~
��߭�K������6=�c�]����=���`�i�.��Ri�ő�����ڽV�7��3���A*D��r8
!8���	�>��q�*���&!e�T�]���sw�xɝ��8!���&���ઞcr���fH����t��{��荆$��.���c��(�Ċ�R��˶��K�^_#�>\ou��ВL�es��R�˰���8���
i4r�d�.[�0�s�?����nU�J��iW>��%IzoEƺ��� a��V�T�����|:�BZa�u�B3�I�����0^o`E��������c�K�8�*r�8tۏ��ߧ�f#�	ZP�T��Y��֒�ySY�j���%U�8P�X��x[Aѵݬ9�$w�W�E����TK���L���/���p}T��3�
��Ha� E��`p]2��Tl�ݨ�UH��Q�tS�?aM��i6ׂ�P3F�U����(U5][p�����KPeqJ���y�����.E�3���iA�g^���{�0�_�'�l!��=�ɋ��{�U1>��+��y�1���,.���HP����}�Γ"%���C$�+����'�P@�T���A\��m�����z/m�`	�� � 6�DA�>�x" �ſ'Q@<�,B�m�@��F=ץ��t$�
���i��uqe��gqѰ]$��q�jq�l�0���S�d,�z �V!�'��(�V�ۿ~�N?�[�i��)����G����E��s�h�c��7�6C���|)�DO�n���s a�����9.Ot+�~ּ=ĭ֔�
1GeK���p�i� ;���\(^{�(�=j�8� �<H��F�3!"�F�i%�wu'9�d��7|������xm��	�)����T��v�=5�ȼшo+Y-F��R㲦�;�LG�&.���@��2e4���4i�A��!�6씑fg�J��_�C�_�^ف�aܒˆi̴�ɽ�NI�0�Mc�8 ���3�8�̶h�Z��qז�!���!��/2?PR,�(	ԑ�Ԋ��l1\��)�[tا�.���6��=��r���6�>΁��o�b6 f��X�D��N�,���;v�Z*ºA��޲�@˘Tc��gU�Jn�	Y]�
#���X��&I:PE��+�vLeٵ�:���8F+���E��?��M����)T�$b�}J��k�4����BՒ�0ѭ��D��q-l���G(�'��"�XsR RH���Jւ ��_��Ա�%��ْ��'�f�1|iT%iA��<P^y<ך������J�+81[����q�\����8�P�ѥߺ�m��wќ�?�A�\��"���.Á�p}��H����E���:���z� ��L�tnJM��T��M�v��H�{6����<ej�N��N�ʸ�Se|�QZK\Ņf�X��<#�s�\�/���xY��օ�r}\z����+�b��;�E&�2����;P�q�2�T���e���i�$[��=�W��WW�E2��$.{��!��B�����<��y�>�����;˄���VA�&PET��X�Og�����直��]��s�F�?��zc-2>�x�r�g^���l�+GuCa\)&S ���ܥ��3�\������K�g�c�<�ۯ	��ZC�b�/O&5���
�NU���nE)�\�1�o��ز�Y��B2v¨�$�V�ͥ�gJ>�j�~s��<$2���E��jt���3�L M�>b ��v%��6Ny64s#�}���6<�:���^�P�[�=7j����r�D�n�>\�g�]"b%�6,��d���m@q��Y@��파��������"��]9���-������s\�s_�Zb�5� �a<g�s��V\�lS�DF7^KɁ�]��"���<v��"�i6�SSZ>7`<rW9���1Uq�Q���܌q�3w��1!82���.���:�cp�yK��Nq��ˀ�^����/�ȾV(4q�����`�� �(����FV��\�_Dq/����D������M��Wx���5�aϞ��«��Z�n���.5y�ӵ����w�6� {�uBQn20_�eC���7jɔ�]�6O����4?�ʄ.c�:?D)�w������p��>!�CVB�y��G��q��PD��	q�͟��;N3$կIA��C(Rk������M�No��:�tn�.k�~��b�9N��r����*A�n��	G2�q��woUo��i4��({�<d2��CW���1��6������׫�(g�e_f���ރ	�~|���NY��
�*�������t Mj�� ��4�"ʎ���؝?(����[W��JKMH�lɨ/%�5�����DpُI���'�@4ᖕ,�2H��� Id��՗��4�)�v�r_�vS}��Ʈ�`����|�~W����hl��RX�
���������L}EN(.�˲������!""�Ύ�g&����1�eSخ���x莰�JQ="�Px����L�y�|��pM�hĜ�/�H�v�C5% ��3�l\�M'��^\��Bv��∜�=N"��� �������'���S�)���ň佢���;>N�CSt(T�-��%���v'}l#q�[��g����AR�����j�˗X�we��} �  |��/,掏s��;bHq̤���q\_J�U�q�NG�=��Lb���ac5����Z���; ֪@#�r��xQB�����f#@$�����9�ִ���/�T*�"�>;���z%(�I�&9�|�Ť�_]��(m���{=^q�O�wG	�լ�lw^O͗qAn���3B�=o
��튤�Fp�Ɇ�_�x;����;T�J�Eec��[����i�ӱ3�_�x_(��솔h��(B!�%������dPO8����&4|�eJR�&���7e*�� 
�Nw�t�Xه��K�`\@&&��54>�;�"E����J�2Tf��hLBX3-"f��Q2��C0/*[i0��T��}P>~*�<7C�'����W�c�l����ywO8��Lg[�t�i(�faO(f�:�h(�����Đi|���
���HD�7�i���z�2��pU��K.����F4�jI����_I��R�-��m�ϿKc%���{M�P�g:�_ۈF=�
�S��YY~r#by�4��^3�8��8�\��	����2?��)�*�?��������g;���RE�*n�8 �7"V��-����� ,v~u#�C�X�d@I�5�t����h���V������=�\��� E�u0��Y��8h`��7�������V (�ܟ-�ds�/p
K��q"�eO�K��Q�T�|=��#�Q0���
����&�l�BO�ӏ�鎬�N���1�#�r�����?I�� 6����ϧ˰�E|ۣ�I�4��[̃V�bI:h��Dl�F�̼G?UWqpY�v)BE|ݹ F��hn	����p~�*԰�y��$� �Z
Bwjz&�,iZ��\�]�a"�\6f������)�ܿ��:�e����3-[6�⛾?� 4�g��=$����ƑjKG��
�zx��"H&�˞P,��9�4�h��,[@q��{�:ݶ�PZ����Yt�ݢ/��%w%m�D��l��0P%���t�{Ƌ�8���m��?u�14#,����H���5�ָ
 ��IvΕ�qǧ�8����-��"���
��Zl���^��  ��o^�4 wv��;���z���HK^�r�ak�����Lz9K+��{_5B�!�B�W����S��4�����HZ�SpW\��f��<�_�������v�w�5+�M��d��2p�һY�s1x�\U�X�L�~�Em��m�S�����k�G�<��l���XǟD�g-BX�w��b�pN�l�z�#U���z�"�f���6�FO�&���w��}"��MF]&~E E�Һ�qz�C�P�C�2�^�6_���XE����}©�8��LvT6�tʾ�zGј3���Ώ�6�;��5��*p|~�R��	J�*�%�s/�搲�c�o[H�ۓq�5p����a��/����tT��1˦�6�۷ٶ��%4�5PؠQӃߩ�WS-����j�`�e<�S)7��a��iK5��q����۬Z���M�!�<j�D,�|��͂�֊�Y5?�Ѣ����ڍ��.�>���|���$�Fx+�������<����q�ۍ��S�($>V;>LQz�x�v�qŶE�����k�S�ٮ��^�^x����'�[y�.��bB���R1�>@H�	��6���JoeyN��sZ�@:&�T����_���}�"            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      x      x������ � �      z      x������ � �      |      x������ � �      ~      x������ � �      �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      N      x������ � �      P      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   C   x�ı�0��Hق��Cd����s�!��p^�n�l"W�fr�dW�bG׿�"�g���      �      x�3䬮�4�2QF\1z\\\ (��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     