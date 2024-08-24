.class public final Lcom/google/android/gms/internal/mlkit_common/zzjh;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzjh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjh;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 1

    .line 1
    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlg;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzob;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zza:Lcom/google/android/gms/internal/mlkit_common/zzix;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlk;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlt;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlp;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlr;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkb;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzka;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkr;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzga;->zza:Lcom/google/android/gms/internal/mlkit_common/zzga;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznv;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzip;->zza:Lcom/google/android/gms/internal/mlkit_common/zzip;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjz;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjy;

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmm;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzov;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzft;->zza:Lcom/google/android/gms/internal/mlkit_common/zzft;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkn;

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkl;

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmn;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzns;

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzim;->zza:Lcom/google/android/gms/internal/mlkit_common/zzim;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznt;

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzin;->zza:Lcom/google/android/gms/internal/mlkit_common/zzin;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznr;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzil;->zza:Lcom/google/android/gms/internal/mlkit_common/zzil;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlx;

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzou;

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzly;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgs;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmv;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmy;

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmx;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmw;

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznh;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzib;->zza:Lcom/google/android/gms/internal/mlkit_common/zzib;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzni;

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzic;->zza:Lcom/google/android/gms/internal/mlkit_common/zzic;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznk;

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzie;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznj;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzid;->zza:Lcom/google/android/gms/internal/mlkit_common/zzid;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlw;

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznl;

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzif;->zza:Lcom/google/android/gms/internal/mlkit_common/zzif;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzig;->zza:Lcom/google/android/gms/internal/mlkit_common/zzig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zznm;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznn;

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzih;->zza:Lcom/google/android/gms/internal/mlkit_common/zzih;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzno;

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzii;->zza:Lcom/google/android/gms/internal/mlkit_common/zzii;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznq;

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza:Lcom/google/android/gms/internal/mlkit_common/zzij;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznp;

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzik;->zza:Lcom/google/android/gms/internal/mlkit_common/zzik;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzng;

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkx;

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzne;

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznd;

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznf;

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzia;->zza:Lcom/google/android/gms/internal/mlkit_common/zzia;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznu;

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzio;->zza:Lcom/google/android/gms/internal/mlkit_common/zzio;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoh;

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjn;

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzev;->zza:Lcom/google/android/gms/internal/mlkit_common/zzev;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjl;

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzet;->zza:Lcom/google/android/gms/internal/mlkit_common/zzet;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjk;

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzes;->zza:Lcom/google/android/gms/internal/mlkit_common/zzes;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjm;

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjp;

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_common/zzex;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzew;->zza:Lcom/google/android/gms/internal/mlkit_common/zzew;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjq;

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_common/zzey;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjr;

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_common/zzez;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjs;

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfa;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjt;

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzju;

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzdc;

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzem;->zza:Lcom/google/android/gms/internal/mlkit_common/zzem;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzde;

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzdd;

    .line 59
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzen;->zza:Lcom/google/android/gms/internal/mlkit_common/zzen;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkv;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzke;

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzbx;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzbw;

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkj;

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzbz;

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzby;

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcl;

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdv;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzck;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcb;

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzca;

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcr;

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzea;->zza:Lcom/google/android/gms/internal/mlkit_common/zzea;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcq;

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcv;

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzee;->zza:Lcom/google/android/gms/internal/mlkit_common/zzee;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcu;

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_common/zzef;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzdb;

    .line 75
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzek;->zza:Lcom/google/android/gms/internal/mlkit_common/zzek;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzda;

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzel;->zza:Lcom/google/android/gms/internal/mlkit_common/zzel;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcx;

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcw;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcz;

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzei;->zza:Lcom/google/android/gms/internal/mlkit_common/zzei;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcy;

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzej;->zza:Lcom/google/android/gms/internal/mlkit_common/zzej;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzop;

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzis;->zza:Lcom/google/android/gms/internal/mlkit_common/zzis;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoi;

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzom;

    .line 83
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzol;

    .line 84
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoj;

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoo;

    .line 86
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzir;->zza:Lcom/google/android/gms/internal/mlkit_common/zzir;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzon;

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziq;->zza:Lcom/google/android/gms/internal/mlkit_common/zziq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoq;

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzok;

    .line 89
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzot;

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzos;

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzor;

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzje;->zza:Lcom/google/android/gms/internal/mlkit_common/zzje;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznw;

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziu;->zza:Lcom/google/android/gms/internal/mlkit_common/zziu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzks;

    .line 94
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlb;

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjj;

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzer;->zza:Lcom/google/android/gms/internal/mlkit_common/zzer;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzko;

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkw;

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzge;->zza:Lcom/google/android/gms/internal/mlkit_common/zzge;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkk;

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkg;

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkh;

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfm;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkf;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzki;

    .line 103
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlv;

    .line 104
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlu;

    .line 105
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzbv;

    .line 106
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoe;

    .line 107
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Lcom/google/android/gms/internal/mlkit_common/zzja;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzog;

    .line 108
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzof;

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzjb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzji;

    .line 110
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzep;->zza:Lcom/google/android/gms/internal/mlkit_common/zzep;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjx;

    .line 111
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_common/zzff;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjw;

    .line 112
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfe;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzjv;

    .line 113
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmj;

    .line 114
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzml;

    .line 115
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmk;

    .line 116
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhe;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcj;

    .line 117
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzci;

    .line 118
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmo;

    .line 119
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmr;

    .line 120
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmp;

    .line 121
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmq;

    .line 122
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhk;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcn;

    .line 123
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcm;

    .line 124
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzny;

    .line 125
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziw;->zza:Lcom/google/android/gms/internal/mlkit_common/zziw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznx;

    .line 126
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziv;->zza:Lcom/google/android/gms/internal/mlkit_common/zziv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzoc;

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziy;->zza:Lcom/google/android/gms/internal/mlkit_common/zziy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzod;

    .line 128
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziz;->zza:Lcom/google/android/gms/internal/mlkit_common/zziz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmz;

    .line 129
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_common/zzht;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznc;

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 131
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zznb;

    .line 132
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkq;

    .line 133
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzct;

    .line 134
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzec;->zza:Lcom/google/android/gms/internal/mlkit_common/zzec;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcs;

    .line 135
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzed;->zza:Lcom/google/android/gms/internal/mlkit_common/zzed;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 136
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfy;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkp;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzkm;

    .line 137
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzms;

    .line 138
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 139
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzho;->zza:Lcom/google/android/gms/internal/mlkit_common/zzho;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmt;

    .line 140
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcp;

    .line 141
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzco;

    .line 142
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmc;

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmd;

    .line 144
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzme;

    .line 145
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcf;

    .line 146
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzce;

    .line 147
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzlz;

    .line 148
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzma;

    .line 149
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmb;

    .line 150
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcd;

    .line 151
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcc;

    .line 152
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmf;

    .line 153
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmg;

    .line 154
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_common/zzha;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmh;

    .line 155
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzmi;

    .line 156
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzch;

    .line 157
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/zzcg;

    .line 158
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
