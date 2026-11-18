.class Lcom/osec/nativelib/utils/HttpHandler$1;
.super Ljava/lang/Object;
.source "HttpHandler.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osec/nativelib/utils/HttpHandler;->setTrustManager(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/osec/nativelib/utils/HttpHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/osec/nativelib/utils/HttpHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/osec/nativelib/utils/HttpHandler$1;->this$0:Lcom/osec/nativelib/utils/HttpHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/osec/nativelib/utils/HttpHandler$1;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    const-string p1, "setTrustManager"

    .line 2
    .line 3
    const-string p2, "checkClientTrusted"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    const-string p2, "setTrustManager"

    .line 2
    .line 3
    const-string v0, "checkServerTrusted"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/osec/nativelib/utils/OpayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/osec/nativelib/utils/HttpHandler$1;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/osec/nativelib/utils/HttpsUtils;->checkHttpsCert([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 3
    .line 4
    return-object v0
.end method
