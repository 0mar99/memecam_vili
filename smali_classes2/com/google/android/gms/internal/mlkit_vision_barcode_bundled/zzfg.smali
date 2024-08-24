.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;-><init>([Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;
    .locals 8

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzE(Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzb()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzA()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    move-result-object p1

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzy()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    move-result-object p1

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    .line 10
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzA()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object v5

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    move-result-object v6

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    move-result-object v7

    move-object v1, p1

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object v3

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzA()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object v5

    const/4 v6, 0x0

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    move-result-object v7

    move-object v1, p1

    .line 21
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    move-result-object p0

    goto :goto_0

    .line 22
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzy()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object v5

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    move-result-object v6

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    move-result-object v7

    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    move-result-object p0

    goto :goto_0

    .line 28
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzz()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    move-result-object v5

    const/4 v6, 0x0

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    move-result-object v7

    move-object v1, p1

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    move-result-object p0

    :goto_0
    return-object p0
.end method
