
package test;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the test package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Delgrade_QNAME = new QName("http://Test/", "delgrade");
    private final static QName _Hello_QNAME = new QName("http://Test/", "hello");
    private final static QName _GetnameResponse_QNAME = new QName("http://Test/", "getnameResponse");
    private final static QName _GetData_QNAME = new QName("http://Test/", "getData");
    private final static QName _UpdateResponse_QNAME = new QName("http://Test/", "updateResponse");
    private final static QName _GetData1_QNAME = new QName("http://Test/", "getData1");
    private final static QName _DelResponse_QNAME = new QName("http://Test/", "delResponse");
    private final static QName _Getname_QNAME = new QName("http://Test/", "getname");
    private final static QName _HelloResponse_QNAME = new QName("http://Test/", "helloResponse");
    private final static QName _UpdategradeResponse_QNAME = new QName("http://Test/", "updategradeResponse");
    private final static QName _DelgradeResponse_QNAME = new QName("http://Test/", "delgradeResponse");
    private final static QName _Del_QNAME = new QName("http://Test/", "del");
    private final static QName _Update_QNAME = new QName("http://Test/", "update");
    private final static QName _GetData1Response_QNAME = new QName("http://Test/", "getData1Response");
    private final static QName _Updategrade_QNAME = new QName("http://Test/", "updategrade");
    private final static QName _Login_QNAME = new QName("http://Test/", "login");
    private final static QName _LoginResponse_QNAME = new QName("http://Test/", "loginResponse");
    private final static QName _Add_QNAME = new QName("http://Test/", "add");
    private final static QName _AddResponse_QNAME = new QName("http://Test/", "addResponse");
    private final static QName _GetDataResponse_QNAME = new QName("http://Test/", "getDataResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: test
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Add }
     * 
     */
    public Add createAdd() {
        return new Add();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link GetDataResponse }
     * 
     */
    public GetDataResponse createGetDataResponse() {
        return new GetDataResponse();
    }

    /**
     * Create an instance of {@link AddResponse }
     * 
     */
    public AddResponse createAddResponse() {
        return new AddResponse();
    }

    /**
     * Create an instance of {@link Update }
     * 
     */
    public Update createUpdate() {
        return new Update();
    }

    /**
     * Create an instance of {@link Del }
     * 
     */
    public Del createDel() {
        return new Del();
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link GetData1Response }
     * 
     */
    public GetData1Response createGetData1Response() {
        return new GetData1Response();
    }

    /**
     * Create an instance of {@link Updategrade }
     * 
     */
    public Updategrade createUpdategrade() {
        return new Updategrade();
    }

    /**
     * Create an instance of {@link Getname }
     * 
     */
    public Getname createGetname() {
        return new Getname();
    }

    /**
     * Create an instance of {@link DelResponse }
     * 
     */
    public DelResponse createDelResponse() {
        return new DelResponse();
    }

    /**
     * Create an instance of {@link DelgradeResponse }
     * 
     */
    public DelgradeResponse createDelgradeResponse() {
        return new DelgradeResponse();
    }

    /**
     * Create an instance of {@link UpdategradeResponse }
     * 
     */
    public UpdategradeResponse createUpdategradeResponse() {
        return new UpdategradeResponse();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link GetnameResponse }
     * 
     */
    public GetnameResponse createGetnameResponse() {
        return new GetnameResponse();
    }

    /**
     * Create an instance of {@link Delgrade }
     * 
     */
    public Delgrade createDelgrade() {
        return new Delgrade();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link GetData1 }
     * 
     */
    public GetData1 createGetData1() {
        return new GetData1();
    }

    /**
     * Create an instance of {@link GetData }
     * 
     */
    public GetData createGetData() {
        return new GetData();
    }

    /**
     * Create an instance of {@link UpdateResponse }
     * 
     */
    public UpdateResponse createUpdateResponse() {
        return new UpdateResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Delgrade }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "delgrade")
    public JAXBElement<Delgrade> createDelgrade(Delgrade value) {
        return new JAXBElement<Delgrade>(_Delgrade_QNAME, Delgrade.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetnameResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getnameResponse")
    public JAXBElement<GetnameResponse> createGetnameResponse(GetnameResponse value) {
        return new JAXBElement<GetnameResponse>(_GetnameResponse_QNAME, GetnameResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetData }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getData")
    public JAXBElement<GetData> createGetData(GetData value) {
        return new JAXBElement<GetData>(_GetData_QNAME, GetData.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "updateResponse")
    public JAXBElement<UpdateResponse> createUpdateResponse(UpdateResponse value) {
        return new JAXBElement<UpdateResponse>(_UpdateResponse_QNAME, UpdateResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetData1 }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getData1")
    public JAXBElement<GetData1> createGetData1(GetData1 value) {
        return new JAXBElement<GetData1>(_GetData1_QNAME, GetData1 .class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DelResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "delResponse")
    public JAXBElement<DelResponse> createDelResponse(DelResponse value) {
        return new JAXBElement<DelResponse>(_DelResponse_QNAME, DelResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Getname }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getname")
    public JAXBElement<Getname> createGetname(Getname value) {
        return new JAXBElement<Getname>(_Getname_QNAME, Getname.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdategradeResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "updategradeResponse")
    public JAXBElement<UpdategradeResponse> createUpdategradeResponse(UpdategradeResponse value) {
        return new JAXBElement<UpdategradeResponse>(_UpdategradeResponse_QNAME, UpdategradeResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DelgradeResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "delgradeResponse")
    public JAXBElement<DelgradeResponse> createDelgradeResponse(DelgradeResponse value) {
        return new JAXBElement<DelgradeResponse>(_DelgradeResponse_QNAME, DelgradeResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Del }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "del")
    public JAXBElement<Del> createDel(Del value) {
        return new JAXBElement<Del>(_Del_QNAME, Del.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Update }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "update")
    public JAXBElement<Update> createUpdate(Update value) {
        return new JAXBElement<Update>(_Update_QNAME, Update.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetData1Response }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getData1Response")
    public JAXBElement<GetData1Response> createGetData1Response(GetData1Response value) {
        return new JAXBElement<GetData1Response>(_GetData1Response_QNAME, GetData1Response.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Updategrade }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "updategrade")
    public JAXBElement<Updategrade> createUpdategrade(Updategrade value) {
        return new JAXBElement<Updategrade>(_Updategrade_QNAME, Updategrade.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Login }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "login")
    public JAXBElement<Login> createLogin(Login value) {
        return new JAXBElement<Login>(_Login_QNAME, Login.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "loginResponse")
    public JAXBElement<LoginResponse> createLoginResponse(LoginResponse value) {
        return new JAXBElement<LoginResponse>(_LoginResponse_QNAME, LoginResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Add }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "add")
    public JAXBElement<Add> createAdd(Add value) {
        return new JAXBElement<Add>(_Add_QNAME, Add.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "addResponse")
    public JAXBElement<AddResponse> createAddResponse(AddResponse value) {
        return new JAXBElement<AddResponse>(_AddResponse_QNAME, AddResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDataResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Test/", name = "getDataResponse")
    public JAXBElement<GetDataResponse> createGetDataResponse(GetDataResponse value) {
        return new JAXBElement<GetDataResponse>(_GetDataResponse_QNAME, GetDataResponse.class, null, value);
    }

}
