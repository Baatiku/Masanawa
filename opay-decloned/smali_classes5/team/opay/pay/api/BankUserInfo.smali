.class public final Lteam/opay/pay/api/BankUserInfo;
.super Ljava/lang/Object;
.source "ApiService.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008v\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u008f\u0003\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\t\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010(\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u0008-\u0010.J\u0008\u0010x\u001a\u0004\u0018\u00010\tJ\u0010\u0010y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010z\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010{\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010|\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010}\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000b\u0010~\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0080\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0086\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0087\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0089\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u008a\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u008b\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u008c\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0011\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0011\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u000c\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0093\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0095\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0096\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0097\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000c\u0010\u0098\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0012\u0010\u009b\u0001\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010(H\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u0011\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010,H\u00c6\u0003J\u00de\u0003\u0010\u009f\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00a0\u0001J\u0016\u0010\u00a1\u0001\u001a\u00020\u00032\n\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u00a3\u0001H\u00d6\u0003J\u000b\u0010\u00a4\u0001\u001a\u00030\u00a5\u0001H\u00d6\u0001J\n\u0010\u00a6\u0001\u001a\u00020\tH\u00d6\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u00084\u00100\"\u0004\u00085\u00102R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u00086\u00100\"\u0004\u00087\u00102R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u00088\u00100\"\u0004\u00089\u00102R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008:\u00100\"\u0004\u0008;\u00102R \u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R \u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010=\"\u0004\u0008A\u0010?R \u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010=\"\u0004\u0008C\u0010?R \u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010=\"\u0004\u0008E\u0010?R \u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010=\"\u0004\u0008G\u0010?R \u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010=\"\u0004\u0008I\u0010?R \u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010=\"\u0004\u0008K\u0010?R \u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010=\"\u0004\u0008M\u0010?R \u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010=\"\u0004\u0008O\u0010?R \u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010=\"\u0004\u0008Q\u0010?R \u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010=\"\u0004\u0008S\u0010?R \u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010=\"\u0004\u0008U\u0010?R \u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010=\"\u0004\u0008W\u0010?R \u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010=\"\u0004\u0008Y\u0010?R \u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010=\"\u0004\u0008[\u0010?R\"\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\\\u00100\"\u0004\u0008]\u00102R\"\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008\u0019\u00100\"\u0004\u0008^\u00102R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008_\u00100\"\u0004\u0008`\u00102R \u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR \u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010b\"\u0004\u0008f\u0010dR \u0010\u001e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010=\"\u0004\u0008h\u0010?R \u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010=\"\u0004\u0008j\u0010?R\u0018\u0010 \u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010=R\u0018\u0010!\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010=R\u0018\u0010\"\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010=R\u0018\u0010#\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010=R\u0018\u0010$\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010=R\u001a\u0010%\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00103\u001a\u0004\u0008p\u00100R\u001a\u0010&\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00103\u001a\u0004\u0008q\u00100R\u001e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010(8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010sR\u0018\u0010)\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010bR\u001a\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00103\u001a\u0004\u0008u\u00100R\u0018\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010w\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lteam/opay/pay/api/BankUserInfo;",
        "Ljava/io/Serializable;",
        "oneSelfFlag",
        "",
        "opayUserFlag",
        "userRoleAllowAAFlag",
        "opayBankFlag",
        "opayAccountShowFlag",
        "bvnNumber",
        "",
        "bankCode",
        "bankName",
        "accountName",
        "bankAccountName",
        "recipientAccount",
        "photoUrl",
        "bankIcon",
        "cashBackText",
        "cashBackTextTitle",
        "cashBackTextShort",
        "cashBackTextPage",
        "cashBackPictureUrl",
        "shareText",
        "cashBackTextButton",
        "cashBack",
        "isReward",
        "splitOrderFlag",
        "maxAmount",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "minAmount",
        "splitOrderWarnTips",
        "errorMsg",
        "firstTransferTextConfirmName",
        "firstTransferTextConfirmAmount",
        "firstTransferText",
        "errorText",
        "successText",
        "bankPopUp",
        "bankActivityPopUp",
        "errorFirstName",
        "",
        "remainingTransferAmount",
        "queryOWealthInterface",
        "stampDutyInfo",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)V",
        "getOneSelfFlag",
        "()Ljava/lang/Boolean;",
        "setOneSelfFlag",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getOpayUserFlag",
        "setOpayUserFlag",
        "getUserRoleAllowAAFlag",
        "setUserRoleAllowAAFlag",
        "getOpayBankFlag",
        "setOpayBankFlag",
        "getOpayAccountShowFlag",
        "setOpayAccountShowFlag",
        "getBvnNumber",
        "()Ljava/lang/String;",
        "setBvnNumber",
        "(Ljava/lang/String;)V",
        "getBankCode",
        "setBankCode",
        "getBankName",
        "setBankName",
        "getAccountName",
        "setAccountName",
        "getBankAccountName",
        "setBankAccountName",
        "getRecipientAccount",
        "setRecipientAccount",
        "getPhotoUrl",
        "setPhotoUrl",
        "getBankIcon",
        "setBankIcon",
        "getCashBackText",
        "setCashBackText",
        "getCashBackTextTitle",
        "setCashBackTextTitle",
        "getCashBackTextShort",
        "setCashBackTextShort",
        "getCashBackTextPage",
        "setCashBackTextPage",
        "getCashBackPictureUrl",
        "setCashBackPictureUrl",
        "getShareText",
        "setShareText",
        "getCashBackTextButton",
        "setCashBackTextButton",
        "getCashBack",
        "setCashBack",
        "setReward",
        "getSplitOrderFlag",
        "setSplitOrderFlag",
        "getMaxAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "setMaxAmount",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "getMinAmount",
        "setMinAmount",
        "getSplitOrderWarnTips",
        "setSplitOrderWarnTips",
        "getErrorMsg",
        "setErrorMsg",
        "getFirstTransferTextConfirmName",
        "getFirstTransferTextConfirmAmount",
        "getFirstTransferText",
        "getErrorText",
        "getSuccessText",
        "getBankPopUp",
        "getBankActivityPopUp",
        "getErrorFirstName",
        "()Ljava/util/List;",
        "getRemainingTransferAmount",
        "getQueryOWealthInterface",
        "getStampDutyInfo",
        "()Lteam/opay/core/api/graphql/StampDutyInfo;",
        "getRealBankAccountName",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)Lteam/opay/pay/api/BankUserInfo;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accountName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bankAccountName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankAccountName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bankActivityPopUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankActivityPopUp"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bankCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bankIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankLogoUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bankPopUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankPopUp"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bvnNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvnNumber"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBack:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showMarketingTextFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackPictureUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackPictureUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackTextButton:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackTextButton"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackTextPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackTextPage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackTextShort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackTextShort"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cashBackTextTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashBackTextTitle"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorFirstName:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorFirstName"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorMsg"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final firstTransferText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstTransferText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final firstTransferTextConfirmAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstTransferTextConfirmAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final firstTransferTextConfirmName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstTransferTextConfirmName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isReward:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isReward"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oneSelfFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oneSelfFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private opayAccountShowFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opayAccountShowFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private opayBankFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opayBankFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private opayUserFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opayUserFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private photoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photoUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final queryOWealthInterface:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "queryOWealthInterface"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recipientAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remainingTransferAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shareText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shareText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitOrderFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "splitOrderFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitOrderWarnTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "splitOrderWarnTips"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDutyInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final successText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "successText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userRoleAllowAAFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userRoleAllowAAFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Lteam/opay/core/api/graphql/StampDutyInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/graphql/StampDutyInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p39

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "https://files.opayweb.com/images/api/icon/bank_logo/100004_2.png"

    move-object v15, v1

    goto :goto_0

    :cond_0
    move-object/from16 v15, p13

    :goto_0
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object/from16 v29, v1

    goto :goto_1

    :cond_1
    move-object/from16 v29, p27

    :goto_1
    and-int/lit8 v0, p40, 0x20

    if-eqz v0, :cond_2

    move-object/from16 v40, v1

    goto :goto_2

    :cond_2
    move-object/from16 v40, p38

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    move-object/from16 v36, p34

    move-object/from16 v37, p35

    move-object/from16 v38, p36

    move-object/from16 v39, p37

    .line 41
    invoke-direct/range {v2 .. v40}, Lteam/opay/pay/api/BankUserInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/api/BankUserInfo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;IILjava/lang/Object;)Lteam/opay/pay/api/BankUserInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p39

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p40, 0x1

    move-object/from16 p32, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, p40, 0x2

    move-object/from16 p33, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v16, p40, 0x4

    move-object/from16 p34, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v16, p40, 0x8

    move-object/from16 p35, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v16, p40, 0x10

    move-object/from16 p36, v1

    if-eqz v16, :cond_24

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v16, p40, 0x20

    move-object/from16 p37, v1

    if-eqz v16, :cond_25

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p31, v15

    move-object/from16 p38, v1

    invoke-virtual/range {p0 .. p38}, Lteam/opay/pay/api/BankUserInfo;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)Lteam/opay/pay/api/BankUserInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component35()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component36()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component37()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component38()Lteam/opay/core/api/graphql/StampDutyInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)Lteam/opay/pay/api/BankUserInfo;
    .locals 40
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Lteam/opay/core/api/graphql/StampDutyInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/graphql/StampDutyInfo;",
            ")",
            "Lteam/opay/pay/api/BankUserInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    new-instance v39, Lteam/opay/pay/api/BankUserInfo;

    move-object/from16 v0, v39

    invoke-direct/range {v0 .. v38}, Lteam/opay/pay/api/BankUserInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Lteam/opay/core/api/graphql/StampDutyInfo;)V

    return-object v39
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/api/BankUserInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/api/BankUserInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    .line 234
    .line 235
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    .line 245
    .line 246
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    .line 256
    .line 257
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 267
    .line 268
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 278
    .line 279
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_1a

    .line 286
    .line 287
    return v2

    .line 288
    :cond_1a
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_1b

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1b
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_1c

    .line 308
    .line 309
    return v2

    .line 310
    :cond_1c
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    .line 311
    .line 312
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_1d

    .line 319
    .line 320
    return v2

    .line 321
    :cond_1d
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_1e

    .line 330
    .line 331
    return v2

    .line 332
    :cond_1e
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_1f

    .line 341
    .line 342
    return v2

    .line 343
    :cond_1f
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_20

    .line 352
    .line 353
    return v2

    .line 354
    :cond_20
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_21

    .line 363
    .line 364
    return v2

    .line 365
    :cond_21
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    .line 366
    .line 367
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    .line 368
    .line 369
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_22

    .line 374
    .line 375
    return v2

    .line 376
    :cond_22
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    .line 377
    .line 378
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    .line 379
    .line 380
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_23

    .line 385
    .line 386
    return v2

    .line 387
    :cond_23
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    .line 388
    .line 389
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    .line 390
    .line 391
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_24

    .line 396
    .line 397
    return v2

    .line 398
    :cond_24
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 399
    .line 400
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 401
    .line 402
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_25

    .line 407
    .line 408
    return v2

    .line 409
    :cond_25
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    .line 410
    .line 411
    iget-object v3, p1, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    .line 412
    .line 413
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-nez v1, :cond_26

    .line 418
    .line 419
    return v2

    .line 420
    :cond_26
    iget-object v1, p0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 421
    .line 422
    iget-object p1, p1, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 423
    .line 424
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-nez p1, :cond_27

    .line 429
    .line 430
    return v2

    .line 431
    :cond_27
    return v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankAccountName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankActivityPopUp()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBankPopUp()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBvnNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBack()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackPictureUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackTextButton()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackTextPage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackTextShort()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCashBackTextTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorFirstName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstTransferText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstTransferTextConfirmAmount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstTransferTextConfirmName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOneSelfFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpayAccountShowFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpayBankFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpayUserFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhotoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQueryOWealthInterface()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRealBankAccountName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public final getRecipientAccount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemainingTransferAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShareText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSplitOrderFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSplitOrderWarnTips()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStampDutyInfo()Lteam/opay/core/api/graphql/StampDutyInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuccessText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserRoleAllowAAFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    if-nez v2, :cond_16

    const/4 v2, 0x0

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_20

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    if-nez v2, :cond_21

    const/4 v2, 0x0

    goto :goto_21

    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_22

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    if-nez v2, :cond_23

    const/4 v2, 0x0

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    if-nez v2, :cond_24

    const/4 v2, 0x0

    goto :goto_24

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    if-nez v2, :cond_25

    goto :goto_25

    :cond_25
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/StampDutyInfo;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    return v0
.end method

.method public final isReward()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBankAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBankIcon(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBvnNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBack(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackPictureUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackTextButton(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackTextPage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackTextShort(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCashBackTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxAmount(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final setMinAmount(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final setOneSelfFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpayAccountShowFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpayBankFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpayUserFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecipientAccount(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReward(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setShareText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitOrderFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitOrderWarnTips(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserRoleAllowAAFlag(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 40
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lteam/opay/pay/api/BankUserInfo;->oneSelfFlag:Ljava/lang/Boolean;

    iget-object v2, v0, Lteam/opay/pay/api/BankUserInfo;->opayUserFlag:Ljava/lang/Boolean;

    iget-object v3, v0, Lteam/opay/pay/api/BankUserInfo;->userRoleAllowAAFlag:Ljava/lang/Boolean;

    iget-object v4, v0, Lteam/opay/pay/api/BankUserInfo;->opayBankFlag:Ljava/lang/Boolean;

    iget-object v5, v0, Lteam/opay/pay/api/BankUserInfo;->opayAccountShowFlag:Ljava/lang/Boolean;

    iget-object v6, v0, Lteam/opay/pay/api/BankUserInfo;->bvnNumber:Ljava/lang/String;

    iget-object v7, v0, Lteam/opay/pay/api/BankUserInfo;->bankCode:Ljava/lang/String;

    iget-object v8, v0, Lteam/opay/pay/api/BankUserInfo;->bankName:Ljava/lang/String;

    iget-object v9, v0, Lteam/opay/pay/api/BankUserInfo;->accountName:Ljava/lang/String;

    iget-object v10, v0, Lteam/opay/pay/api/BankUserInfo;->bankAccountName:Ljava/lang/String;

    iget-object v11, v0, Lteam/opay/pay/api/BankUserInfo;->recipientAccount:Ljava/lang/String;

    iget-object v12, v0, Lteam/opay/pay/api/BankUserInfo;->photoUrl:Ljava/lang/String;

    iget-object v13, v0, Lteam/opay/pay/api/BankUserInfo;->bankIcon:Ljava/lang/String;

    iget-object v14, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackText:Ljava/lang/String;

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextTitle:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextShort:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextPage:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackPictureUrl:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->shareText:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBackTextButton:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->cashBack:Ljava/lang/Boolean;

    move-object/from16 v22, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->isReward:Ljava/lang/Boolean;

    move-object/from16 v23, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderFlag:Ljava/lang/Boolean;

    move-object/from16 v24, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->maxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v25, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->minAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v26, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->splitOrderWarnTips:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->errorMsg:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmName:Ljava/lang/String;

    move-object/from16 v29, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferTextConfirmAmount:Ljava/lang/String;

    move-object/from16 v30, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->firstTransferText:Ljava/lang/String;

    move-object/from16 v31, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->errorText:Ljava/lang/String;

    move-object/from16 v32, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->successText:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->bankPopUp:Ljava/lang/Boolean;

    move-object/from16 v34, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->bankActivityPopUp:Ljava/lang/Boolean;

    move-object/from16 v35, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->errorFirstName:Ljava/util/List;

    move-object/from16 v36, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->remainingTransferAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v37, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->queryOWealthInterface:Ljava/lang/Boolean;

    move-object/from16 v38, v15

    iget-object v15, v0, Lteam/opay/pay/api/BankUserInfo;->stampDutyInfo:Lteam/opay/core/api/graphql/StampDutyInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v15

    const-string v15, "BankUserInfo(oneSelfFlag="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opayUserFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userRoleAllowAAFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opayBankFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opayAccountShowFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bvnNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bankCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bankName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bankAccountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bankIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackTextTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackTextShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackTextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackPictureUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBackTextButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", splitOrderFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", splitOrderWarnTips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstTransferTextConfirmName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstTransferTextConfirmAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstTransferText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", successText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bankPopUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bankActivityPopUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorFirstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTransferAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryOWealthInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stampDutyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
