.class public Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/common/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonName"
.end annotation


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirst()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public getLast()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;->zzg:Ljava/lang/String;

    return-object p0
.end method
