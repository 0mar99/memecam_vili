.class public Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/common/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sms"
.end annotation


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Sms;->zzb:Ljava/lang/String;

    return-object p0
.end method
