.class public final Lcom/opay/security/1111/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/opay/security/1111/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/opay/security/1111/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/opay/security/1111/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/security/1111/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/security/1111/b;->b:Lcom/opay/security/1111/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v1, Lcom/opay/security/1111/c;

    .line 16
    .line 17
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvOkVfzM0mQ1dkUYy6z3j\nSXcuzLIHPxKT/mDGwkoabC8yPbfpXNSc/sH4paonvq73j04LzZWjrfdLY+n9THtg\nhzWNWc4loRLZbWTW/d2cY3zZXO22pSNQgvHKxwXPTetZz6Z0yRd3VgHvWqlFiPnH\nf4kqUqmd/SrezXIvx6+dcFe3yb7zOBJ8hCbXLe8KPG9NlIuZAXHWXg1uzLO5z017\nPOrQYpKnpCeGHreCXc3iJBa6Hgp8E4Pw8MBK8SpBvXKtm+sFnC1JJ0JG4cGlz1sA\nnkQy2Gj3KtnOFJ8GkPrNAISVC2QbdRBZYanZ79Gtfq0FMFKBKwtgK7FR5kB4tyez\n6QIDAQAB"

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lcom/opay/security/1111/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "1"

    .line 25
    .line 26
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v1, Lcom/opay/security/1111/c;

    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lcom/opay/security/1111/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "12"

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v1, Lcom/opay/security/1111/c;

    .line 44
    .line 45
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgFGVfrY4jQSoZQWWygZ83roKXWD4YeT2x2p41dGkPixe73rT2IW04glagN2vgoZoHuOPqa5and6kAmK2ujmCHu6D1auJhE2tXP+yLkpSiYMQucDKmCsWMnW9XlC5K7OSL77TXXcfvTvyZcjObEz6LIBRzs6+FqpFbUO9SJEfh6wIDAQAB"

    .line 46
    .line 47
    const-string v3, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAKAUZV+tjiNBKhlBZbKBnzeugpdYPhh5PbHanjV0aQ+LF7vetPYhbTiCVqA3a+Chmge44+prlqd3qQCYra6OYIe7oPVq4mETa1c/7IuSlKJgxC5wMqYKxYydb1eULkrs5IvvtNddx+9O/JlyM5sTPosgFHOzr4WqkVtQ71IkR+HrAgMBAAECgYAkQLo8kteP0GAyXAcmCAkA2Tql/8wASuTX9ITD4lsws/VqDKO64hMUKyBnJGX/91kkypCDNF5oCsdxZSJgV8owViYWZPnbvEcNqLtqgs7nj1UHuX9S5yYIPGN/mHL6OJJ7sosOd6rqdpg6JRRkAKUV+tmN/7Gh0+GFXM+ug6mgwQJBAO9/+CWpCAVoGxCA+YsTMb82fTOmGYMkZOAfQsvIV2v6DC8eJrSa+c0yCOTa3tirlCkhBfB08f8U2iEPS+Gu3bECQQCrG7O0gYmFL2RX1O+37ovyyHTbst4s4xbLW4jLzbSoimL235lCdIC+fllEEP96wPAiqo6dzmdH8KsGmVozsVRbAkB0ME8AZjp/9Pt8TDXD5LHzo8mlruUdnCBcIo5TMoRG2+3hRe1dHPonNCjgbdZCoyqjsWOiPfnQ2Brigvs7J4xhAkBGRiZUKC92x7QKbqXVgN9xYuq7oIanIM0nz/wq190uq0dh5Qtow7hshC/dSK3kmIEHe8z++tpoLWvQVgM538apAkBoSNfaTkDZhFavuiVl6L8cWCoDcJBItip8wKQhXwHp0O3HLg10OEd14M58ooNfpgt+8D8/8/2OOFaR0HzA+2Dm"

    .line 48
    .line 49
    invoke-direct {v1, v2, v3}, Lcom/opay/security/1111/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "test"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/opay/security/1111/c;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    const-string v0, "1"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    check-cast p1, Lcom/opay/security/1111/c;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    sget-object v0, Lcom/opay/security/1111/b;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0
.end method
