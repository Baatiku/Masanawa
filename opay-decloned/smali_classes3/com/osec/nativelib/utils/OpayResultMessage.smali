.class public Lcom/osec/nativelib/utils/OpayResultMessage;
.super Ljava/lang/Object;
.source "OpayResultMessage.java"


# instance fields
.field private resultMsg:[B

.field private resutError:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/osec/nativelib/utils/OpayResultMessage;->resultMsg:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/osec/nativelib/utils/OpayResultMessage;->resutError:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/utils/OpayResultMessage;->resutError:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResult()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/utils/OpayResultMessage;->resultMsg:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/utils/OpayResultMessage;->resultMsg:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method
