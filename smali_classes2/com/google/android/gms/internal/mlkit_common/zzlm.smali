.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzlm;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzbm;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public static final synthetic zzk:[Lcom/google/android/gms/internal/mlkit_common/zzlm;


# instance fields
.field public final zzl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v1, 0x0

    const-string v2, "TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v2, 0x1

    const-string v3, "CUSTOM"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v3, 0x2

    const-string v4, "AUTOML_IMAGE_LABELING"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v4, 0x3

    const-string v5, "BASE_TRANSLATE"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v5, 0x4

    const-string v6, "CUSTOM_OBJECT_DETECTION"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zze:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v6, 0x5

    const-string v7, "CUSTOM_IMAGE_LABELING"

    .line 6
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v7, 0x6

    const-string v8, "BASE_ENTITY_EXTRACTION"

    .line 7
    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/4 v8, 0x7

    const-string v9, "BASE_DIGITAL_INK"

    .line 8
    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/16 v9, 0x8

    const-string v10, "TOXICITY_DETECTION"

    .line 9
    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/16 v10, 0x9

    const-string v11, "IMAGE_CAPTIONING"

    .line 10
    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/google/android/gms/internal/mlkit_common/zzlm;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v12, v11, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zze:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v5

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v7

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzk:[Lcom/google/android/gms/internal/mlkit_common/zzlm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzlm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzk:[Lcom/google/android/gms/internal/mlkit_common/zzlm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzlm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzlm;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzl:I

    return p0
.end method
