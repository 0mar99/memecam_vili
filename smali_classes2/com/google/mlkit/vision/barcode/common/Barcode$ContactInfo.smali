.class public Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/common/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public final zza:Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/util/List;

.field public final zze:Ljava/util/List;

.field public final zzf:Ljava/util/List;

.field public final zzg:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Phone;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Email;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Address;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zza:Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzf:Ljava/util/List;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Address;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzg:Ljava/util/List;

    return-object p0
.end method

.method public getEmails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Email;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zze:Ljava/util/List;

    return-object p0
.end method

.method public getName()Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zza:Lcom/google/mlkit/vision/barcode/common/Barcode$PersonName;

    return-object p0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getPhones()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode$Phone;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzd:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public getUrls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$ContactInfo;->zzf:Ljava/util/List;

    return-object p0
.end method
